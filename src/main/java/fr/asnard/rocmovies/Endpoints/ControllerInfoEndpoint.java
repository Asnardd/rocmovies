package fr.asnard.rocmovies.Endpoints;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.actuate.endpoint.annotation.Endpoint;
import org.springframework.boot.actuate.endpoint.annotation.ReadOperation;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.*;

@Component
@Endpoint(id = "controllers")
public class ControllerInfoEndpoint {

    private final RequestMappingHandlerMapping handlerMapping;
    private final RestTemplate restTemplate = new RestTemplate();
    @Value("${app.base-url}")
    private String baseUrl;

    public ControllerInfoEndpoint(@Qualifier("requestMappingHandlerMapping") RequestMappingHandlerMapping handlerMapping) {
        this.handlerMapping = handlerMapping;
    }

    @ReadOperation
    public Map<String, Object> controllerInfo() {
        Map<String, List<String>> controllerGetRoutes = new HashMap<>();

        handlerMapping.getHandlerMethods().forEach((mappingInfo, handlerMethod) -> {
            String controllerName = handlerMethod.getBeanType().getSimpleName();

            Set<RequestMethod> methods = mappingInfo.getMethodsCondition().getMethods();
            if (methods.contains(RequestMethod.GET)) {
                Set<String> patterns = mappingInfo.getPatternValues();

                controllerGetRoutes
                        .computeIfAbsent(controllerName, k -> new ArrayList<>())
                        .addAll(patterns);
            };
        });

        List<Map<String, Object>> controllers = new ArrayList<>();
        int totalGetRoutes = 0;

        for (Map.Entry<String, List<String>> entry : controllerGetRoutes.entrySet()) {
            String mainRoute = entry.getValue().stream()
                    .filter(r -> !r.contains("{"))
                    .findFirst()
                    .orElse(null);
            String status = mainRoute != null ? probeRoute(mainRoute) : "SKIPPED";

            Map<String, Object> info = new HashMap<>();
            info.put("controller", entry.getKey());
            info.put("status", status);
            info.put("getRouteCount", entry.getValue().size());
            info.put("getRoutes", entry.getValue());
            controllers.add(info);
            totalGetRoutes += entry.getValue().size();
        }

        Map<String, Object> result = new HashMap<>();
        result.put("totalControllers", controllers.size());
        result.put("totalGetRoutes", totalGetRoutes);
        result.put("controllers", controllers);
        return result;
    }

    private String probeRoute(String route) {
        if (!route.contains("{")) {
            try {
                ResponseEntity<String> response = restTemplate.getForEntity(baseUrl + route, String.class);
                return response.getStatusCode().is2xxSuccessful() ? "UP" : "DOWN (" + response.getStatusCode() + ")";
            } catch (Exception e) {
                return "DOWN (" + e.getMessage() + ")";
            }
        }
        return "SKIPPED";
    }
}

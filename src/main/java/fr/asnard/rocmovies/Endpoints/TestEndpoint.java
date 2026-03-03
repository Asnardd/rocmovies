package fr.asnard.rocmovies.Endpoints;

import org.springframework.boot.actuate.endpoint.annotation.Endpoint;
import org.springframework.boot.actuate.endpoint.annotation.ReadOperation;
import org.springframework.stereotype.Component;

@Component
@Endpoint(id = "test")
public class TestEndpoint {
    @ReadOperation
    public String test() {
        return "{'value':'Hello World!'}";
    }
}

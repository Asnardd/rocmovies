package fr.asnard.rocmovies.Controllers;

import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController implements HealthIndicator {
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    @Override
    public Health health() {
//        return Health.down().build();
        return Health.up().build();
    }
}

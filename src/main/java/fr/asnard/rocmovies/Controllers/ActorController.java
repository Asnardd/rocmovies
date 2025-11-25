package fr.asnard.rocmovies.Controllers;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Actor;
import fr.asnard.rocmovies.service.ActorService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping("actors")
public class ActorController {

    @Autowired
    private ActorService actorService;

    @GetMapping("/")
    public List<Actor> getAllActors() {
        return actorService.getAllActors();
    }

    @GetMapping("/{idActor}")
    public Actor getActorById(@PathVariable Long idActor) {
        try {
            return actorService.getActorById(idActor);
        }
        catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid data");
        }
    }

    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public Actor createActor(@RequestBody @Valid Actor customer) {
        try {
            return actorService.createActor(customer);
        }
        catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid data");
        }
    }

    @DeleteMapping("/{idActor}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public boolean deleteActor(@PathVariable Long idActor) {
        try {
            actorService.deleteActor(idActor);
            return true;
        }
        catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid data");
        }
    }
}

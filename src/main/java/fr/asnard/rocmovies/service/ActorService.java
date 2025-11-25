package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Actor;
import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Customer;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.repositories.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
@Scope("prototype")
public class ActorService {
    @Autowired
    private ActorRepository actorRepository;

    public ActorService() {
        System.out.println("Création du service ActorService2");
    }

    public List<Actor> getAllActors() {
        return actorRepository.findAll();
    }

    public Actor getActorById(Long id) {
        return actorRepository.findById(id).get();
    }

    public Actor createActor(Actor actor) {
        return actorRepository.save(actor);
    }

    public void deleteActor(Long id) {
        actorRepository.deleteById(id);
    }

}

package fr.asnard.rocmovies.repositories;

import fr.asnard.rocmovies.entity.Actor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ActorRepository extends JpaRepository<Actor, Long> {
}

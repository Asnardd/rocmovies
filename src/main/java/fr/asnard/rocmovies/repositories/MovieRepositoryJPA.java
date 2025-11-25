package fr.asnard.rocmovies.repositories;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import fr.asnard.rocmovies.entity.Style;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface MovieRepositoryJPA extends JpaRepository<Movie, Long> {
    List<Movie> findByStyle(Style style);
}

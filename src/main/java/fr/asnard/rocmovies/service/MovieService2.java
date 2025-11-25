// src/main/java/fr/asnard/rocmovies/service/MovieService2.java
package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.repositories.MovieRepositoryJDBC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Scope("prototype")
public class MovieService2 implements IMovieService {

    @Autowired
    private MovieRepositoryJDBC movieRepository;

    public MovieService2() {
        System.out.println("Création du service MovieService2");
    }

    @Override
    public List<Movie> getListMovies() {
        return movieRepository.findAll();
    }

    @Override
    public Optional<Movie> getMovieById(int idMovie) {
        return movieRepository.findById(idMovie);
    }

    @Override
    public List<Movie> getMoviesBetween(int startYear, int endYear) {
        return movieRepository.findAll().stream()
                .filter(movie -> movie.getProductionYear() >= startYear && movie.getProductionYear() <= endYear)
                .toList();
    }

    @Override
    public void addMovie(Movie movie) {
        if (movie.getIdMovie() == 0) {
            int nextId = movieRepository.findAll().stream()
                    .mapToInt(Movie::getIdMovie)
                    .max()
                    .orElse(0) + 1;
            movie.setIdMovie(nextId);
        }
        movieRepository.save(movie);
    }
}

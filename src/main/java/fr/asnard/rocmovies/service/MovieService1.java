// src/main/java/fr/asnard/rocmovies/service/MovieService1.java
package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.repositories.MovieRepositoryJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Scope("singleton")
public class MovieService1 implements IMovieService {

    @Autowired
    private MovieRepositoryJPA movieRepository;


    public MovieService1() {
        System.out.println("Création du service MovieService1");
    }

    @Override
    public List<Movie> getListMovies() {
        return movieRepository.findAll();
    }

    @Override
    public Optional<Movie> getMovieById(Long idMovie) {
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
        if (movie.getId() == 0) {
            Long nextId = movieRepository.findAll().stream()
                    .mapToLong(Movie::getId)
                    .max()
                    .orElse(0) + 1;
            movie.setId(nextId);
        }
        movieRepository.save(movie);
    }

    @Override
    public void deleteMovie(Movie movie) {
        movieRepository.delete(movie);
    }
}

package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public interface IMovieService {

    List<Movie> getListMovies();

    Optional<Movie> getMovieById(Long idMovie);

    List<Movie> getMoviesBetween(int startYear, int endYear);

    void addMovie(Movie movie);

    void deleteMovie(Movie movie);
}

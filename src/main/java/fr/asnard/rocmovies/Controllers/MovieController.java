package fr.asnard.rocmovies.Controllers;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import fr.asnard.rocmovies.service.IMovieService;
import fr.asnard.rocmovies.service.MovieService1;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@RestController
@RequestMapping("movies")
public class MovieController {

    @Qualifier("movieService2")
    @Autowired
    private IMovieService movieService;

    /**
     * Récupère un film par son identifiant
     * @param idMovie Identifiant du film
     * @return Film correspondant à l'identifiant
     */
    @GetMapping("/{idMovie}")
    public Optional<Movie> movie(@PathVariable Long idMovie){
        Optional<Movie> movie = movieService.getMovieById(idMovie);
        if (movie.isEmpty()){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Movie not found");
        }
        return movieService.getMovieById(idMovie);
    }

    /**
     * Récupère la liste des films, filtrée par style si fourni
     * @param styleParam Style de film à filtrer (optionnel)
     * @return Liste des films
     */
    @GetMapping("/")
    public List<Movie> moviesByStyle(
            @RequestParam(name="style", required=false) String styleParam
    ){
        if (styleParam != null) {
            try {
                MovieStyles style = MovieStyles.valueOf(styleParam);
                return movieService.getListMovies().stream()
                        .filter(movie -> Objects.equals(movie.getStyle().getName(), style.name()))
                        .toList();
            } catch (IllegalArgumentException e) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "This style doesn't exist");
            }
        }
        return movieService.getListMovies();
    }

    /**
     * Ajoute un nouveau film
     * @param movie Film à ajouter
     * @return Film ajouté
     */
    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public Movie addMovie(@RequestBody @Valid Movie movie) {
        try {
            Movie result = movieService.addMovie(movie);
            return movieService.getMovieById(result.getId()).get();
        }
        catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid movie data");
        }
    }

    @DeleteMapping("/{idMovie}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public boolean deleteMovie(@PathVariable Long idMovie) {
        Optional<Movie> movie = movieService.getMovieById(idMovie);
        if (movie.isEmpty()){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Movie not found");
        }
        movieService.deleteMovie(movie.get());
        return true;
    }

}

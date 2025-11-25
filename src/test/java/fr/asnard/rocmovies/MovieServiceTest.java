package fr.asnard.rocmovies;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import fr.asnard.rocmovies.repositories.MovieRepository;
import fr.asnard.rocmovies.service.MovieService1;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class MovieServiceTest {

    @Mock
    private MovieRepository movieRepository;

    @InjectMocks
    private MovieService1 movieService1;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetListMovies() {
        when(movieRepository.findAll()).thenReturn(
                List.of(
                        new Movie(1, "Cloud Atlas", MovieStyles.SF, 2012, "FR-889112"),
                        new Movie(2, "Shutter Island", MovieStyles.THRILLER, 2010, "USA-003645"),
                        new Movie(3, "Interstellar", MovieStyles.SF, 2018, "GB-793222"),
                        new Movie(4, "Pulp Fiction", MovieStyles.ACTION, 2001, "USA-778945"),
                        new Movie(5, "Mulholland Drive", MovieStyles.THRILLER, 2001, "FR-445122")
                        )
        );

        var movies = movieService1.getListMovies();

        assertNotNull(movies);
        assertEquals(5, movies.size());
    }

    @Test
    void testFindMovieById() {
        Movie mockMovie = new Movie(1, "Inception", MovieStyles.SF,2010, "GB-123456");
        when(movieRepository.findById(1)).thenReturn(Optional.of(mockMovie));

        Movie result = movieService1.getMovieById(1).orElse(null);

        assertNotNull(result);
        assertEquals("Inception", result.getTitle());
    }

    @Test
    void testGetMoviesBetween() {
        when(movieRepository.findAll()).thenReturn(
                List.of(
                        new Movie(1, "Movie A", MovieStyles.SF, 2000, "FR-000001"),
                        new Movie(2, "Movie B", MovieStyles.THRILLER, 2005, "USA-000002"),
                        new Movie(3, "Movie C", MovieStyles.ACTION, 2010, "GB-000003"),
                        new Movie(4, "Movie D", MovieStyles.DRAME, 2015, "FR-000004")
                )
        );

        var movies = movieService1.getMoviesBetween(2003, 2012);

        assertNotNull(movies);
        assertEquals(2, movies.size());
    }

    @Test
    void testAddMovie() {
        Movie newMovie = new Movie(6, "The Matrix", MovieStyles.SF, 1999, "US-654321");

        movieService1.addMovie(newMovie);
    }
}

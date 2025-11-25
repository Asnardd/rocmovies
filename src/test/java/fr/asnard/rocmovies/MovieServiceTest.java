package fr.asnard.rocmovies;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.repositories.MovieRepositoryJPA;
import fr.asnard.rocmovies.service.MovieService2;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class MovieServiceTest {

    @Mock
    private MovieRepositoryJPA movieRepository;

    @InjectMocks
    private MovieService2 movieService2;

    private Movie movie1;
    private Movie movie2;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        movie1 = new Movie();
        movie1.setId(1L);
        movie1.setTitle("Inception");
        movie1.setProductionYear(2010);

        movie2 = new Movie();
        movie2.setId(2L);
        movie2.setTitle("The Matrix");
        movie2.setProductionYear(1999);
    }

    @Test
    void testGetListMovies() {
        when(movieRepository.findAll()).thenReturn(Arrays.asList(movie1, movie2));

        List<Movie> movies = movieService2.getListMovies();
        assertEquals(2, movies.size());
        verify(movieRepository, times(1)).findAll();
    }

    @Test
    void testGetMovieById_Found() {
        when(movieRepository.findById(1L)).thenReturn(Optional.of(movie1));

        Optional<Movie> result = movieService2.getMovieById(1L);
        assertTrue(result.isPresent());
        assertEquals("Inception", result.get().getTitle());
        verify(movieRepository, times(1)).findById(1L);
    }

    @Test
    void testGetMoviesBetween() {
        when(movieRepository.findAll()).thenReturn(Arrays.asList(movie1, movie2));

        List<Movie> movies = movieService2.getMoviesBetween(2000, 2020);
        assertEquals(1, movies.size());
        assertEquals("Inception", movies.get(0).getTitle());
    }

    @Test
    void testAddMovie() {
        movieService2.addMovie(movie1);
        verify(movieRepository, times(1)).save(movie1);
    }

    @Test
    void testDeleteMovie() {
        movieService2.deleteMovie(movie1);
        verify(movieRepository, times(1)).delete(movie1);
    }
}

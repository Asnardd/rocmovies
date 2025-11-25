package fr.asnard.rocmovies;

import com.fasterxml.jackson.databind.ObjectMapper;
import fr.asnard.rocmovies.Controllers.MovieController;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import fr.asnard.rocmovies.repositories.StyleRepository;
import fr.asnard.rocmovies.service.IMovieService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.server.ResponseStatusException;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

class MovieControllerTest {

    private MockMvc mockMvc;

    @Mock(name = "movieService2")
    private IMovieService movieService;

    @Mock
    private StyleRepository styleRepository;

    @InjectMocks
    private MovieController movieController;

    private final ObjectMapper objectMapper = new ObjectMapper();

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        mockMvc = MockMvcBuilders.standaloneSetup(movieController).build();
    }

    @Test
    void testGetMovieById_Found() throws Exception {
        Movie movie = new Movie();
        movie.setId(1L);
        movie.setTitle("Inception");
        movie.setStyle(styleRepository.findById(1L).get());

        when(movieService.getMovieById(1L)).thenReturn(Optional.of(movie));

        mockMvc.perform(get("/movies/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(1))
                .andExpect(jsonPath("$.title").value("Inception"))
                .andExpect(jsonPath("$.style.name").value("ACTION"));

        verify(movieService, times(1)).getMovieById(1L);
    }

    @Test
    void testGetMovieById_NotFound() throws Exception {
        when(movieService.getMovieById(1L)).thenReturn(Optional.empty());

        mockMvc.perform(get("/movies/1"))
                .andExpect(status().isNotFound());

        verify(movieService, times(1)).getMovieById(1L);
    }

    @Test
    void testGetMoviesByStyle_Filtered() throws Exception {
        Movie movie1 = new Movie();
        movie1.setId(1L);
        movie1.setTitle("Inception");
        movie1.setStyle(styleRepository.findById(1L).get());

        Movie movie2 = new Movie();
        movie2.setId(2L);
        movie2.setTitle("The Notebook");
        movie1.setStyle(styleRepository.findById(7L).get());

        List<Movie> movies = Arrays.asList(movie1, movie2);

        when(movieService.getListMovies()).thenReturn(movies);

        mockMvc.perform(get("/movies/").param("style", "ACTION"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].title").value("Inception"))
                .andExpect(jsonPath("$.length()").value(1));
    }

    @Test
    void testGetMoviesByStyle_InvalidStyle() throws Exception {
        mockMvc.perform(get("/movies/").param("style", "INVALID"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void testGetMovies_NoStyle() throws Exception {
        Movie movie1 = new Movie();
        movie1.setId(1L);
        movie1.setTitle("Inception");
        movie1.setStyle(styleRepository.findById(1L).get());

        Movie movie2 = new Movie();
        movie2.setId(2L);
        movie2.setTitle("The Notebook");
        movie1.setStyle(styleRepository.findById(7L).get());

        List<Movie> movies = Arrays.asList(movie1, movie2);

        when(movieService.getListMovies()).thenReturn(movies);

        mockMvc.perform(get("/movies/"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void testAddMovie_Success() throws Exception {
        Movie movie = new Movie();
        movie.setId(1L);
        movie.setTitle("Inception");
        movie.setStyle(styleRepository.findById(1L).get());

        mockMvc.perform(post("/movies/")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(movie)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.title").value("Inception"));
    }

    @Test
    void testAddMovie_InvalidData() throws Exception {
        Movie movie = new Movie(); // no title

        doThrow(new IllegalArgumentException()).when(movieService).addMovie(ArgumentMatchers.any(Movie.class));

        mockMvc.perform(post("/movies/")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(movie)))
                .andExpect(status().isBadRequest());
    }

    @Test
    void testDeleteMovie_Success() throws Exception {
        Movie movie = new Movie();
        movie.setId(1L);
        movie.setTitle("Inception");

        when(movieService.getMovieById(1L)).thenReturn(Optional.of(movie));
        doNothing().when(movieService).deleteMovie(movie);

        mockMvc.perform(delete("/movies/1"))
                .andExpect(status().isOk())
                .andExpect(content().string("true"));
    }

    @Test
    void testDeleteMovie_NotFound() throws Exception {
        when(movieService.getMovieById(1L)).thenReturn(Optional.empty());

        mockMvc.perform(delete("/movies/1"))
                .andExpect(status().isNotFound());
    }
}

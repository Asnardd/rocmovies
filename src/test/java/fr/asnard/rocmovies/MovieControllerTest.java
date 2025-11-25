package fr.asnard.rocmovies;

import com.fasterxml.jackson.databind.ObjectMapper;
import fr.asnard.rocmovies.Controllers.MovieController;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import fr.asnard.rocmovies.service.IMovieService;
import fr.asnard.rocmovies.service.MovieService1;
import fr.asnard.rocmovies.service.MovieService2;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import java.util.Optional;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(MovieController.class)
class MovieControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean(name = "movieService2")
    private MovieService2 movieService;

    @Autowired
    private ObjectMapper objectMapper;

//    @Test
//    void testGetMovieById_Returns200AndJson() throws Exception {
//        Movie mockMovie = new Movie(1L, "Inception", MovieStyles.SF,2010, "GB-123456");
//        when(movieService.getMovieById(1)).thenReturn(Optional.of(mockMovie));
//
//        mockMvc.perform(get("/movies/1")
//                        .contentType(MediaType.APPLICATION_JSON))
//                .andExpect(status().isOk())
//                .andExpect(content().contentType("application/json"));
//    }

//    @Test
//    void testGetMovieById_Returns404WhenNotFound() throws Exception {
//        when(movieService.getMovieById(999)).thenReturn(Optional.empty());
//
//        mockMvc.perform(get("/movies/999"))
//                .andExpect(status().isNotFound());
//    }

//    @Test
//    void testAddMovie_Returns201() throws Exception {
//        Movie mockMovie = new Movie(1, "Inception", MovieStyles.SF, 2010, "GB-123456");
//        when(movieService.getMovieById(1)).thenReturn(Optional.of(mockMovie));
//
//        mockMvc.perform(post("/movies/")
//                .contentType("application/json")
//                .content(objectMapper.writeValueAsString(mockMovie)))
//                .andExpect(status().isCreated());
//    }

    @Test
    void testAddMovie_Returns400OnInvalidInput() throws Exception {
        String invalidJson = "{ \"title\": \"Inception\", \"style\": \"INVALID_STYLE\", \"productionYear\": 2010, \"code\": \"GB-123456\" }";

        mockMvc.perform(post("/movies/")
                .contentType("application/json")
                .content(invalidJson))
                .andExpect(status().isBadRequest());
    }
}
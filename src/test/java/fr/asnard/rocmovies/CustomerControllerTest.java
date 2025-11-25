package fr.asnard.rocmovies;

import com.fasterxml.jackson.databind.ObjectMapper;
import fr.asnard.rocmovies.Controllers.CustomerController;
import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.service.CustomerService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

class CustomerControllerTest {

    private MockMvc mockMvc;

    @Mock
    private CustomerService customerService;

    @InjectMocks
    private CustomerController customerController;

    private ObjectMapper objectMapper = new ObjectMapper();

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        mockMvc = MockMvcBuilders.standaloneSetup(customerController).build();
    }

    @Test
    void testGetBorrowsByCustomerId_Success() throws Exception {
        Borrow borrow1 = new Borrow();
        borrow1.setId(1L);
        Borrow borrow2 = new Borrow();
        borrow2.setId(2L);

        List<Borrow> borrows = Arrays.asList(borrow1, borrow2);

        when(customerService.getListBorrowsById(1L)).thenReturn(borrows);

        mockMvc.perform(get("/customers/1/borrows"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$[0].id").value(1))
                .andExpect(jsonPath("$[1].id").value(2));

        verify(customerService, times(1)).getListBorrowsById(1L);
    }

    @Test
    void testGetBorrowsByCustomerId_InvalidData() throws Exception {
        when(customerService.getListBorrowsById(1L)).thenThrow(new IllegalArgumentException());

        mockMvc.perform(get("/customers/1/borrows"))
                .andExpect(status().isBadRequest());

        verify(customerService, times(1)).getListBorrowsById(1L);
    }

    @Test
    void testAddMovie_Success() throws Exception {
        Borrow borrow = new Borrow();
        borrow.setId(1L);

        when(customerService.borrowMovie(10L, 1L)).thenReturn(borrow);

        mockMvc.perform(post("/customers/1/borrows")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(10L)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").value(1));

        verify(customerService, times(1)).borrowMovie(10L, 1L);
    }

    @Test
    void testAddMovie_InvalidData() throws Exception {
        doThrow(new IllegalArgumentException()).when(customerService).borrowMovie(10L, 1L);

        mockMvc.perform(post("/customers/1/borrows")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(10L)))
                .andExpect(status().isBadRequest());

        verify(customerService, times(1)).borrowMovie(10L, 1L);
    }
}

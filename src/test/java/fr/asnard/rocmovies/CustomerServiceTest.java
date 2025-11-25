package fr.asnard.rocmovies;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Customer;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.repositories.BorrowRepository;
import fr.asnard.rocmovies.repositories.CustomerRepository;
import fr.asnard.rocmovies.repositories.MovieRepositoryJPA;
import fr.asnard.rocmovies.service.CustomerService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.*;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class CustomerServiceTest {

    @Mock
    private CustomerRepository customerRepository;

    @Mock
    private BorrowRepository borrowRepository;

    @Mock
    private MovieRepositoryJPA movieRepository;

    @InjectMocks
    private CustomerService customerService;

    private Movie movie;
    private Customer customer;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);

        movie = new Movie();
        movie.setId(1L);
        movie.setTitle("Inception");

        customer = new Customer();
        customer.setId(1L);
    }

    @Test
    void testBorrowMovie() {
        when(movieRepository.findById(1L)).thenReturn(Optional.of(movie));
        when(customerRepository.findById(1L)).thenReturn(Optional.of(customer));

        Borrow borrow = customerService.borrowMovie(1L, 1L);

        assertNotNull(borrow);
        assertEquals(movie, borrow.getMovie());
        assertEquals(customer, borrow.getCustomer());
        assertEquals("borrowed", borrow.getStatus());
        assertNotNull(borrow.getDate());

        verify(borrowRepository, times(1)).save(borrow);
    }

    @Test
    void testGetListBorrowsById() {
        Borrow borrow1 = new Borrow();
        borrow1.setMovie(movie);
        customer.setBorrowedMovies(new HashSet<>(Collections.singletonList(movie)));

        when(customerRepository.findById(1L)).thenReturn(Optional.of(customer));

        var result = customerService.getListBorrowsById(1L);
        assertEquals(1, result.size());
        assertEquals("Inception", result.get(0).getMovie().getTitle());
    }
}

package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Customer;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.repositories.BorrowRepository;
import fr.asnard.rocmovies.repositories.CustomerRepository;
import fr.asnard.rocmovies.repositories.MovieRepositoryJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@Service
@Scope("prototype")
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private BorrowRepository borrowRepository;

    @Autowired
    private MovieRepositoryJPA movieRepository;

    public CustomerService() {
        System.out.println("Création du service CustomerService");
    }

    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    public Customer getCustomerById(Long id) {
        return customerRepository.findById(id).get();
    }

    public Customer createCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    public void deleteCustomer(Long id) {
        customerRepository.deleteById(id);
    }

    public Borrow borrowMovie(Long idMovie, Long idCustomer) {
        Movie movie = movieRepository.findById(idMovie).get();
        Customer customer = customerRepository.findById(idCustomer).get();
        Borrow borrow = new Borrow();
        borrow.setMovie(movie);
        borrow.setDate(new Date());
        borrow.setStatus("borrowed");
        borrow.setCustomer(customer);
        borrowRepository.save(borrow);
        return borrow;
    }

    public List<Borrow> getListBorrowsById(Long idCustomer) {
//        return customerRepository.findById(idCustomer).get().getBorrowedMovies().stream().toList();
        return borrowRepository.findByCustomer(customerRepository.findById(idCustomer).get()).stream().toList();
    }
}

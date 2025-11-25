package fr.asnard.rocmovies.repositories;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Customer;
import fr.asnard.rocmovies.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BorrowRepository extends JpaRepository<Borrow, Long> {
    List<Borrow> findByMovie(Movie movie);
    List<Borrow> findByCustomer(Customer customer);
}

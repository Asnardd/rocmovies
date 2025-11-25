package fr.asnard.rocmovies.Controllers;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.service.BorrowService;
import fr.asnard.rocmovies.service.CustomerService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/{idCustomer}/borrows")
    public Object getBorrowsByCustomerId(@PathVariable Long idCustomer) {
        try {
            return customerService.getListBorrowsById(idCustomer);
        }
        catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid data");
        }
    }

    @PostMapping("/{idCustomer}/borrows")
    @ResponseStatus(HttpStatus.CREATED)
    public Borrow addMovie(@RequestBody Long idMovie, @PathVariable Long idCustomer) {
        try {
            return customerService.borrowMovie(idMovie, idCustomer);
        }
        catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid data");
        }
    }
}

package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.repositories.BorrowRepository;
import fr.asnard.rocmovies.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Scope("prototype")
public class BorrowService {
    @Autowired
    private BorrowRepository borrowRepository;
    @Autowired
    private CustomerRepository customerRepository;

    public BorrowService() {
        System.out.println("Création du service BorrowService");
    }

    public void addBorrow(Borrow borrow) {
        borrowRepository.save(borrow);
    }

    public List<Borrow> transferAllBorrows(Long idCustomer1, Long idCustomer2) {
        List<Borrow> borrowsToTransfer = borrowRepository.findByCustomer(customerRepository.findById(idCustomer1).get());
        for (Borrow borrow : borrowsToTransfer) {
            borrow.setCustomer(customerRepository.findById(idCustomer2).get());
            borrowRepository.save(borrow);
        }
        return borrowsToTransfer;
    }
}

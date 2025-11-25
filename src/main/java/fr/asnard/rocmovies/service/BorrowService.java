package fr.asnard.rocmovies.service;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.repositories.BorrowRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

@Service
@Scope("prototype")
public class BorrowService {
    @Autowired
    private BorrowRepository borrowRepository;

    public BorrowService() {
        System.out.println("Création du service BorrowService");
    }

    public void addBorrow(Borrow borrow) {
        borrowRepository.save(borrow);
    }
}

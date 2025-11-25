package fr.asnard.rocmovies;

import fr.asnard.rocmovies.entity.Borrow;
import fr.asnard.rocmovies.repositories.BorrowRepository;
import fr.asnard.rocmovies.service.BorrowService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import static org.mockito.Mockito.*;

class BorrowServiceTest {

    @Mock
    private BorrowRepository borrowRepository;

    @InjectMocks
    private BorrowService borrowService;

    private Borrow borrow;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        borrow = new Borrow();
        borrow.setId(1L);
    }

    @Test
    void testAddBorrow() {
        borrowService.addBorrow(borrow);
        verify(borrowRepository, times(1)).save(borrow);
    }
}

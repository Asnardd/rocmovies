package fr.asnard.rocmovies.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.persistence.Entity;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import org.springframework.boot.context.properties.bind.DefaultValue;

import javax.annotation.processing.Generated;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "movies")
public class Movie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Title cannot be blank")
    @Size(max = 100, message = "Title must be at most 100 characters long")
    private String title;

    @ManyToOne
    @JoinColumn(name = "style_id", nullable = false)
    private Style style;

    @NotNull(message = "Production year cannot be null")
    @Max(value = 2025, message = "Production year cannot be in the future")
    @Column(name = "production_year")
    private Integer productionYear;

    @NotNull(message = "reference cannot be null")
    @Pattern(regexp = "^[A-Z]{2,3}-\\d{6}$", message = "Reference must match XX-###### or XXX-######")
    private String reference;

    @ManyToOne
    @JoinColumn(name = "productor_id", nullable = false)
    private Productor productor;

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Role> roles = new ArrayList<>();

    @ManyToMany
    @JoinTable(
            name = "borrows",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "customer_id")
    )
    @JsonIgnore
    private Set<Customer> borrowers = new HashSet<>();

    public Set<Customer> getBorrowers() {
        return borrowers;
    }

    public void setBorrowers(Set<Customer> borrowers) {
        this.borrowers = borrowers;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Style getStyle() {
        return style;
    }

    public void setStyle(Style style) {
        this.style = style;
    }

    public int getProductionYear() {
        return productionYear;
    }

    public void setProductionYear(int productionYear) {
        this.productionYear = productionYear;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public Productor getProductor() {
        return productor;
    }

    public void setProductor(Productor productor) {
        this.productor = productor;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setProductionYear(Integer productionYear) {
        this.productionYear = productionYear;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }
}

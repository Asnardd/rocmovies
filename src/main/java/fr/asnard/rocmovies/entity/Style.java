package fr.asnard.rocmovies.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.Valid;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "styles")
public class Style {
    @Id
    @GeneratedValue(strategy = jakarta.persistence.GenerationType.IDENTITY)
    private Long id;

    @Valid
    @Enumerated(EnumType.STRING)
    private MovieStyles name;

    @OneToMany(mappedBy = "style")
    @JsonIgnore
    private List<Movie> movies = new ArrayList<>();

    public String getName() {
        return name.name();
    }

    public void setName(MovieStyles name) {
        this.name = name;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}

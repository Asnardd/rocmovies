package fr.asnard.rocmovies.entity;

import jakarta.validation.Valid;
import jakarta.validation.constraints.*;

public class Movie {

    public Movie(int idMovie, String title, MovieStyles style, int productionYear, String reference) {
        this.idMovie = idMovie;
        this.title = title;
        this.style = style;
        this.productionYear = productionYear;
        this.reference = reference;
    }

    @NotNull(message = "idMovie cannot be null")
    private Integer idMovie;

    @NotBlank(message = "Title cannot be blank")
    @Size(max = 100, message = "Title must be at most 100 characters long")
    private String title;

    @NotNull(message = "Style cannot be null")
    @Valid
    private MovieStyles style;

    @NotNull(message = "Production year cannot be null")
    @Max(value = 2025, message = "Production year cannot be in the future")
    private Integer productionYear;

    @NotNull(message = "reference cannot be null")
    @Pattern(regexp = "^[A-Z]{2,3}-\\d{6}$", message = "Reference must match XX-###### or XXX-######")
    private String reference;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public MovieStyles getStyle() {
        return style;
    }

    public void setStyle(MovieStyles style) {
        this.style = style;
    }

    public int getProductionYear() {
        return productionYear;
    }

    public void setProductionYear(int productionYear) {
        this.productionYear = productionYear;
    }

    public int getIdMovie() {
        return idMovie;
    }

    public void setIdMovie(int idMovie) {
        this.idMovie = idMovie;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }
}

package fr.asnard.rocmovies.repositories;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class MovieRepository {

    private final List<Movie> movies = new ArrayList<>();

    public MovieRepository() {
//        movies.add(new Movie(1, "Cloud Atlas", MovieStyles.SF, 2012, "FR-889112"));
//        movies.add(new Movie(2, "Shutter Island", MovieStyles.THRILLER, 2010, "USA-003645"));
//        movies.add(new Movie(3, "Interstellar", MovieStyles.SF, 2018, "GB-793222"));
//        movies.add(new Movie(4, "Pulp Fiction", MovieStyles.ACTION, 2001, "USA-778945"));
//        movies.add(new Movie(5, "Mulholland Drive", MovieStyles.THRILLER, 2001, "FR-445122"));
//        movies.add(new Movie(6, "The Green Mile", MovieStyles.DRAME, 1999, "USA-112398"));
//        movies.add(new Movie(7, "Inception", MovieStyles.SF, 2010, "USA-559821"));
//        movies.add(new Movie(8, "The Dark Knight", MovieStyles.ACTION, 2008, "USA-883214"));
//        movies.add(new Movie(9, "Se7en", MovieStyles.THRILLER, 1995, "USA-441287"));
//        movies.add(new Movie(10, "Arrival", MovieStyles.SF, 2016, "USA-732998"));
//        movies.add(new Movie(11, "Pan's Labyrinth", MovieStyles.FANTASY, 2006, "ES-442110"));
//        movies.add(new Movie(12, "Her", MovieStyles.SF, 2013, "USA-993451"));
//        movies.add(new Movie(13, "Joker", MovieStyles.DRAME, 2019, "USA-668412"));
//        movies.add(new Movie(14, "The Prestige", MovieStyles.THRILLER, 2006, "USA-772130"));
//        movies.add(new Movie(15, "No Country for Old Men", MovieStyles.DRAME, 2007, "USA-118742"));
//        movies.add(new Movie(16, "The Lord of the Rings: The Fellowship of the Ring", MovieStyles.FANTASY, 2001, "NZ-220045"));
//        movies.add(new Movie(17, "The Lord of the Rings: The Two Towers", MovieStyles.FANTASY, 2002, "NZ-220046"));
//        movies.add(new Movie(18, "The Lord of the Rings: The Return of the King", MovieStyles.FANTASY, 2003, "NZ-220047"));
//        movies.add(new Movie(19, "The Matrix", MovieStyles.SF, 1999, "USA-665200"));
//        movies.add(new Movie(20, "Gladiator", MovieStyles.ACTION, 2000, "USA-331198"));
//        movies.add(new Movie(21, "The Revenant", MovieStyles.DRAME, 2015, "USA-901100"));
//        movies.add(new Movie(22, "Memento", MovieStyles.THRILLER, 2000, "USA-221877"));
//        movies.add(new Movie(23, "Whiplash", MovieStyles.DRAME, 2014, "USA-880134"));
//        movies.add(new Movie(24, "Spirited Away", MovieStyles.FANTASY, 2001, "JP-114500"));
//        movies.add(new Movie(25, "The Witch", MovieStyles.HORROR, 2015, "USA-559001"));
//        movies.add(new Movie(26, "La La Land", MovieStyles.ROMANCE, 2016, "USA-897541"));
//        movies.add(new Movie(27, "The Shape of Water", MovieStyles.FANTASY, 2017, "USA-340912"));
//        movies.add(new Movie(28, "Django Unchained", MovieStyles.ACTION, 2012, "USA-883001"));
//        movies.add(new Movie(29, "Fight Club", MovieStyles.DRAME, 1999, "USA-119900"));
//        movies.add(new Movie(30, "The Grand Budapest Hotel", MovieStyles.COMEDY, 2014, "USA-556002"));
//        movies.add(new Movie(31, "Oldboy", MovieStyles.THRILLER, 2003, "KR-220300"));
//        movies.add(new Movie(32, "The Lighthouse", MovieStyles.HORROR, 2019, "USA-901442"));
//        movies.add(new Movie(33, "Blade Runner 2049", MovieStyles.SF, 2017, "USA-551899"));
//        movies.add(new Movie(34, "Mad Max: Fury Road", MovieStyles.ACTION, 2015, "AU-664411"));
//        movies.add(new Movie(35, "The Pianist", MovieStyles.DRAME, 2002, "PL-110002"));
//        movies.add(new Movie(36, "The Social Network", MovieStyles.DRAME, 2010, "USA-567002"));
//        movies.add(new Movie(37, "Get Out", MovieStyles.HORROR, 2017, "USA-883451"));
//        movies.add(new Movie(38, "The Truman Show", MovieStyles.COMEDY, 1998, "USA-223411"));
//        movies.add(new Movie(39, "Amélie", MovieStyles.ROMANCE, 2001, "FR-441100"));
//        movies.add(new Movie(40, "1917", MovieStyles.HISTORY, 2019, "GB-774120"));
//        movies.add(new Movie(41, "Ex Machina", MovieStyles.SF, 2014, "GB-551102"));
//        movies.add(new Movie(42, "A Ghost Story", MovieStyles.DRAME, 2017, "USA-120998"));
//        movies.add(new Movie(43, "Heat", MovieStyles.ACTION, 1995, "USA-129632"));
//        movies.add(new Movie(44, "The Silence of the Lambs", MovieStyles.THRILLER, 1991, "USA-998541"));
//        movies.add(new Movie(45, "The Northman", MovieStyles.ACTION, 2022, "USA-887412"));

    }

    public List<Movie> findAll() {
        return movies;
    }

    public Optional<Movie> findById(int idMovie) {
        return movies.stream().filter(m -> m.getId() == idMovie).findFirst();
    }

    public void save(Movie movie) {
        movies.add(movie);
    }
}

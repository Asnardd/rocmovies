package fr.asnard.rocmovies.repositories;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class MovieRepositoryJDBC {
    private final Connection connection;
    MovieRepositoryJDBC() throws SQLException {
        this.connection = DriverManager.getConnection("jdbc:mysql://172.19.72.210:3306/rocmovies","bards","Pwdev!159");
    }

    public List<Movie> findAll() {
        String sql = "SELECT * FROM movies";
        Statement statement;
        try {
            statement = this.connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            return mapResultSetToMovies(resultSet);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Optional<Movie> findById(int idMovie) {
        String sql = "SELECT * FROM movies WHERE idMovie = ?";
        try {
            PreparedStatement preparedStatement = this.connection.prepareStatement(sql);
            preparedStatement.setInt(1, idMovie);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Movie> movies = mapResultSetToMovies(resultSet);
            if (movies.isEmpty()) {
                return Optional.empty();
            } else {
                return Optional.of(movies.getFirst());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void save(Movie movie) {
        String sql = "INSERT INTO movies (title, style, productionYear, reference) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement preparedStatement = this.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, movie.getTitle());
            preparedStatement.setString(2, movie.getStyle().getName());
            preparedStatement.setInt(3, movie.getProductionYear());
            preparedStatement.setString(4, movie.getReference());
            preparedStatement.executeUpdate();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                movie.setId(generatedKeys.getLong(1));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Movie> mapResultSetToMovies(ResultSet resultSet) throws SQLException {
        List<Movie> movies = new ArrayList<>();
        while (resultSet.next()) {
            Movie movie = new Movie(
//                    resultSet.getLong("idMovie"),
//                    resultSet.getString("title"),
//                    MovieStyles.valueOf(resultSet.getString("style")),
//                    resultSet.getInt("productionYear"),
//                    resultSet.getString("reference")
            );
            movies.add(movie);
        }
        return movies;
    }
}

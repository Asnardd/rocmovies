package fr.asnard.rocmovies.Controllers;

import fr.asnard.rocmovies.entity.Movie;
import fr.asnard.rocmovies.entity.MovieStyles;
import fr.asnard.rocmovies.service.IMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @Qualifier("movieService2")
    @Autowired
    private IMovieService movieService;

    @RequestMapping(value = {"/", "home"})
    public String home(Model model)
    {
        model.addAttribute("styles", MovieStyles.values());
        model.addAttribute("movies",movieService.getListMovies());
        return "home";
    }

    @RequestMapping(value = {"{id}"})
    public String movieDetails(Model model, @PathVariable Long id)
    {
        Movie movie = movieService.getMovieById(id).orElse(null);
        model.addAttribute("movie", movie);
        return "movie-detail";
    }
}

package com.codingdojo.Lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.Lookify.models.Song;
import com.codingdojo.Lookify.services.SongService;

@Controller
public class SongController {
    private final SongService songService;
    public SongController(SongService songService){
        this.songService = songService;
    }
	@RequestMapping("/")
	public String index(Model model) {
		List<Song> songs = songService.allSongs();
		model.addAttribute("songs", songs);
		return "index.jsp";
	}
	@RequestMapping("/dashboard")
	public String index(Model model, @ModelAttribute("song")Song song) {
		List<Song> songs = songService.allSongs();
		model.addAttribute("songs", songs);
		return "dashboard.jsp";
	}
	@RequestMapping("/songs/new")
	public String newSong(@ModelAttribute("song") Song song) {
		return "new.jsp";
	}
    @RequestMapping(value="/dashboard", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("song") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
        	songService.createSong(song);
            return "redirect:/dashboard";
        }
    }
    @RequestMapping("/songs/{id}")
    public String show(Model model, @PathVariable("id") Long id) {
        Song song = songService.findSong(id);
        model.addAttribute("song", song);
        return "show.jsp";
    }
    @RequestMapping("/search")
    public String search(@RequestParam("artist")String artist) {
    	return "redirect:/search/"+artist;
    }
    @RequestMapping("/search/{artist}")
    public String showArtist(Model model, @PathVariable("artist")String artist) {
    	List<Song> songs = songService.getSearchSongs(artist);
    	model.addAttribute("artist", artist);
    	model.addAttribute("songs", songs);
    	return "songs.jsp";
    }
	@RequestMapping("/delete/{id}")
	public String deleteSong(@PathVariable Long id) {
		songService.deleteById(id);
		return "redirect:/dashboard";
	}
	@RequestMapping("/search/topTen")
	public String displayTop(Model model) {
		model.addAttribute("songs", songService.topTen());
		return "topTen.jsp";
	}
}

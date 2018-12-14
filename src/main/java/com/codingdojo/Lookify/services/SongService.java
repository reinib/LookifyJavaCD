package com.codingdojo.Lookify.services;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.Lookify.models.Song;
import com.codingdojo.Lookify.repositories.SongRepository;

@Service
public class SongService {
	private final SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
		this.songRepository = songRepository;
	}
	public List<Song> allSongs(){
		return songRepository.findAll();
	}
    public Song createSong(Song s) {
        return songRepository.save(s);
    }
    
    public Song findSong(Long id) {
        Optional<Song> optionalSong = songRepository.findById(id);
        if(optionalSong.isPresent()) {
            return optionalSong.get();
        } else {
            return null;
        }
    }
	public List<Song> getSearchSongs(String artist){
		return songRepository.findByArtist(artist);
	}
    public void deleteById(Long id) {
    	songRepository.deleteById(id);
    }
	public List<Song> topTen(){
		List<Song> songs = (List<Song>) songRepository.findAll();
		Collections.sort(songs, Comparator.comparingInt(Song::getRating).reversed());
		for(int i = 0; i < songs.size(); i++) {
			if(i > 9) {
				songs.remove(i);
			}
		}
		return songs;
	}
}

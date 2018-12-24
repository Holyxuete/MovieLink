package com.lookoop.film;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface FilmMapper {
	@Insert("INSERT INTO films (title,director,scriptwriter,actors,genre,nation,language,releaseTime,number,info,duration,posterPath,magnetURI) VALUES(#{title},#{director},#{scriptwriter},#{actors},#{genre},#{nation},#{language},#{releaseTime},#{number},#{info},#{duration},#{posterPath},#{magnetURI})")
	void save(Film film);
	
	@Select("SELECT * FROM films WHERE title LIKE CONCAT(CONCAT('%',#{tit}),'%')")
	ArrayList<Film> search(String tit);
}

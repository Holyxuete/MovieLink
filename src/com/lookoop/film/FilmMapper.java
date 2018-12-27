package com.lookoop.film;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface FilmMapper {
	// 爬取数据插入数据库
	@Insert("INSERT INTO films (title,director,scriptwriter,actors,genre,nation,language,releaseTime,number,info,duration,posterPath,magnetURI) VALUES(#{title},#{director},#{scriptwriter},#{actors},#{genre},#{nation},#{language},#{releaseTime},#{number},#{info},#{duration},#{posterPath},#{magnetURI})")
	void save(Film film);
	
	// 根据电影标题查询数据
	@Select("SELECT * FROM films WHERE title LIKE CONCAT(CONCAT('%',#{tit}),'%')")
	ArrayList<Film> searchTitle(String tit);
	
	// 根据导演查询数据
	@Select("SELECT * FROM films WHERE director LIKE CONCAT(CONCAT('%',#{tit}),'%')")
	ArrayList<Film> searchDirec(String tit);
	
	// 根据电影类别查询数据
	@Select("SELECT * FROM films WHERE genre LIKE CONCAT(CONCAT('%',#{tit}),'%')")
	ArrayList<Film> searchGenre(String tit);
	
	// 根据电影上映时间查询数据
	@Select("SELECT * FROM films WHERE releaseTime LIKE CONCAT(CONCAT('%',#{tit}),'%')")
	ArrayList<Film> searchTime(String tit);
}

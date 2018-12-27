package com.lookoop.show;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.lookoop.film.Film;
import com.lookoop.film.FilmMapper;

public class DataTransport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("config.xml"));
			
			SqlSession session = factory.openSession();
			
			FilmMapper mapper = (FilmMapper) session.getMapper(FilmMapper.class);
			
			ArrayList<Film> list = mapper.searchTitle("的");
			
			for(Film f : list) {
				System.out.println(f);
			}
			
			session.commit();
			session.close();
			
			System.out.println("完成查询");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

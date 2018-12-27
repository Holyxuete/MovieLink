package com.lookoop.spider;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.lookoop.film.Film;
import com.lookoop.film.FilmMapper;

public class Main {
	public static void main(String[] args) {
		// 含4个线程的线程池
		ExecutorService pool = Executors.newFixedThreadPool(4);
		
		// 存放所有电影的集合
		ArrayList<Film> list = new ArrayList<>();
		
		// 目标url
		String url = "http://www.dybee.co/movie/page/";
		
		for(int i = 360; i < 375; i++) {
			String path = String.format("%s%d", url,i);
			pool.submit(new ThreadSpider(path, list));
		}
		
		pool.shutdown();
		
		while(!pool.isTerminated()) {
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		// 存入数据库
		// 构建会话工厂
		SqlSessionFactory factory;
		try {
			factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("config.xml"));
			// 打开会话
			SqlSession session = factory.openSession();
			
			FilmMapper mapper = (FilmMapper) session.getMapper(FilmMapper.class);
			
			for(Film ff : list) {
				mapper.save(ff);
			}
			
			session.commit();
			session.close();
			
			System.out.println("完成存储");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String file = "F://poster//data29.csv";
		try(FileWriter out = new FileWriter(file)){
			for(Film f : list) {
				out.write(f.toCSV());
			}
			System.out.println("写入本地EXCEL完成");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}

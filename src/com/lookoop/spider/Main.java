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
		// ��4���̵߳��̳߳�
		ExecutorService pool = Executors.newFixedThreadPool(4);
		
		// ������е�Ӱ�ļ���
		ArrayList<Film> list = new ArrayList<>();
		
		// Ŀ��url
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
		
		// �������ݿ�
		// �����Ự����
		SqlSessionFactory factory;
		try {
			factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("config.xml"));
			// �򿪻Ự
			SqlSession session = factory.openSession();
			
			FilmMapper mapper = (FilmMapper) session.getMapper(FilmMapper.class);
			
			for(Film ff : list) {
				mapper.save(ff);
			}
			
			session.commit();
			session.close();
			
			System.out.println("��ɴ洢");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String file = "F://poster//data29.csv";
		try(FileWriter out = new FileWriter(file)){
			for(Film f : list) {
				out.write(f.toCSV());
			}
			System.out.println("д�뱾��EXCEL���");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}

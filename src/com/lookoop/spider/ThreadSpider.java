package com.lookoop.spider;

import java.util.ArrayList;

import com.lookoop.film.Film;

public class ThreadSpider implements Runnable {

	String url;
	
	ArrayList<Film> list;
	
	public ThreadSpider(String url, ArrayList<Film> list) {
		super();
		this.url = url;
		this.list = list;
	}



	@Override
	public void run() {
		// TODO Auto-generated method stub
		Spider spider = new Spider();
		
		String name = Thread.currentThread().getName();
		
		System.out.println(name + "线程,开始:" + url);
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		spider.spider(url, list);
		
		System.out.println(name + "线程,结束:" + url);
	}

}

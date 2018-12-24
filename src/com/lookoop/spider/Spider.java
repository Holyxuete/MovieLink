package com.lookoop.spider;

import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.lookoop.film.Film;

public class Spider {

	public void spider(String url,ArrayList<Film> list) {
		// TODO Auto-generated method stub
		try {
			// 获取页面
			Document document = Jsoup.connect(url).timeout(1000).get();
			// 获取页面所有电影
			Elements allMovie = document.select(".update_area_lists li");
			// 遍历电影集合
			for(Element film : allMovie) {
				
				Film f = new Film();
				
				// 具体电影url
				String movieUrl = film.selectFirst("a").attr("href");
				
				// 电影详情页面
				Document doc = Jsoup.connect(movieUrl).get();
				
				// 电影标题
				String title = doc.selectFirst("h1").text();
				f.setTitle(title);
				
				// 阅读量
				int number = Integer.parseInt(doc.selectFirst(".cx-views").text());
				f.setNumber(number);
				
				// 导演
				String director = doc.selectFirst(".col-xs-8 p").text();
				f.setDirector(director.substring(3, director.length()));
				
				// 编剧
				String scriptwriter = doc.select(".col-xs-8 p").get(1).text();
				f.setScriptwriter(scriptwriter.substring(3, scriptwriter.length()));
				
				// 主演
				String actors = doc.select(".col-xs-8 p").get(2).text();
				f.setActors(actors.substring(3, actors.length()));
				
				// 类型
				String genre = doc.select(".col-xs-8 p").get(3).text();
				f.setGenre(genre.substring(3, genre.length()));
				
				// 国家
				String nation = doc.select(".col-xs-8 p").get(4).text();
				f.setNation(nation.substring(5, nation.length()));
				
				// 语言
				String language = doc.select(".col-xs-8 p").get(5).text();
				f.setLanguage(language.substring(3, language.length()));
				
				// 上映时间
				String releaseTime = doc.select(".col-xs-8 p").get(6).text();
				f.setReleaseTime(releaseTime.substring(5, releaseTime.length()));
				
				// 片长
				String duration = doc.select(".col-xs-8 p").get(7).text();
				f.setDuration(duration);
				
				// 获取剧情简介
				String info = "";
				info = doc.select(".movie-introduce p").text();
				f.setInfo(info);
				
				// 获取磁力或网盘资源
				f.setMagnetURI(getMagnets(doc));
				
				// 海报
				String posterPath = doc.selectFirst(".img-thumbnail").attr("src");
				f.setPosterPath(posterPath);
				
				list.add(f);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// 获取磁力或网盘资源
	private static String getMagnets(Document doc) {
		// 获取含有连接地址的 tr 标签
		Elements mags = doc.select(".table-hover tr");
		// 存放所有磁力链接或百度网盘地址的列表
		String magnetList = "";
		for(Element mag : mags) {
			Element magInfo = mag.selectFirst("a");
			if(magInfo.text().contains("网盘资源")) {
				magnetList += "网盘资源 : " + magInfo.attr("href") + " 密码: " + mag.selectFirst("a + strong").text() + "*";
			}else {
				magnetList += "磁力链接 : " + magInfo.attr("href") + "*";
			}
		}
		return magnetList;
	}

}

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
			// ��ȡҳ��
			Document document = Jsoup.connect(url).timeout(1000).get();
			// ��ȡҳ�����е�Ӱ
			Elements allMovie = document.select(".update_area_lists li");
			// ������Ӱ����
			for(Element film : allMovie) {
				
				Film f = new Film();
				
				// �����Ӱurl
				String movieUrl = film.selectFirst("a").attr("href");
				
				// ��Ӱ����ҳ��
				Document doc = Jsoup.connect(movieUrl).get();
				
				// ��Ӱ����
				String title = doc.selectFirst("h1").text();
				f.setTitle(title);
				
				// �Ķ���
				int number = Integer.parseInt(doc.selectFirst(".cx-views").text());
				f.setNumber(number);
				
				// ����
				String director = doc.selectFirst(".col-xs-8 p").text();
				f.setDirector(director.substring(3, director.length()));
				
				// ���
				String scriptwriter = doc.select(".col-xs-8 p").get(1).text();
				f.setScriptwriter(scriptwriter.substring(3, scriptwriter.length()));
				
				// ����
				String actors = doc.select(".col-xs-8 p").get(2).text();
				f.setActors(actors.substring(3, actors.length()));
				
				// ����
				String genre = doc.select(".col-xs-8 p").get(3).text();
				f.setGenre(genre.substring(3, genre.length()));
				
				// ����
				String nation = doc.select(".col-xs-8 p").get(4).text();
				f.setNation(nation.substring(5, nation.length()));
				
				// ����
				String language = doc.select(".col-xs-8 p").get(5).text();
				f.setLanguage(language.substring(3, language.length()));
				
				// ��ӳʱ��
				String releaseTime = doc.select(".col-xs-8 p").get(6).text();
				f.setReleaseTime(releaseTime.substring(5, releaseTime.length()));
				
				// Ƭ��
				String duration = doc.select(".col-xs-8 p").get(7).text();
				f.setDuration(duration);
				
				// ��ȡ������
				String info = "";
				info = doc.select(".movie-introduce p").text();
				f.setInfo(info);
				
				// ��ȡ������������Դ
				f.setMagnetURI(getMagnets(doc));
				
				// ����
				String posterPath = doc.selectFirst(".img-thumbnail").attr("src");
				f.setPosterPath(posterPath);
				
				list.add(f);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// ��ȡ������������Դ
	private static String getMagnets(Document doc) {
		// ��ȡ�������ӵ�ַ�� tr ��ǩ
		Elements mags = doc.select(".table-hover tr");
		// ������д������ӻ�ٶ����̵�ַ���б�
		String magnetList = "";
		for(Element mag : mags) {
			Element magInfo = mag.selectFirst("a");
			if(magInfo.text().contains("������Դ")) {
				magnetList += "������Դ : " + magInfo.attr("href") + " ����: " + mag.selectFirst("a + strong").text() + "*";
			}else {
				magnetList += "�������� : " + magInfo.attr("href") + "*";
			}
		}
		return magnetList;
	}

}

package com.lookoop.film;

public class Film {
	/**
	 *  影片标题
	 */
	private String title;
	/**
	 * 导演
	 */
	private String director;
	/**
	 * 编剧
	 */
	private String scriptwriter;
	/**
	 * 主演
	 */
	private String actors;
	/**
	 *  类型
	 */
	private String genre;
	/**
	 *  上映国家/地区
	 */
	private String nation;
	/**
	 * 语言
	 */
	private String language;
	/**
	 * 上映时间
	 */
	private String releaseTime;
	/**
	 *  阅读量
	 */
	private int number;
	/**
	 * 海报本地存放路径
	 */
	private String posterPath;
	/**
	 *  剧情简介
	 */
	private String info;
	/**
	 * 磁力链接
	 */
	private String magnetURI;
	/**
	 * 片长
	 */
	private String duration;
	
	private String[] URIList;
	
	public Film() {
		super();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getScriptwriter() {
		return scriptwriter;
	}

	public void setScriptwriter(String scriptwriter) {
		this.scriptwriter = scriptwriter;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getMagnetURI() {
		return magnetURI;
	}

	public void setMagnetURI(String magnetURI) {
		this.magnetURI = magnetURI;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	public String[] getURIList() {
		return URIList;
	}

	public void setURIList(String[] uRIList) {
		URIList = uRIList;
	}

	@Override
	public String toString() {
		return "Film [title=" + title + ", director=" + director + ", scriptwriter=" + scriptwriter + ", actors="
				+ actors + ", genre=" + genre + ", nation=" + nation + ", language=" + language + ", releaseTime="
				+ releaseTime + ", number=" + number + ", posterPath=" + posterPath + ", info=" + info + ", magnetURI="
				+ magnetURI + ", duration=" + duration + "]\n";
	}
	
	public String toCSV() {
		return String.format("%s|%s|%s|%s|%s|%s|%s|%s|%d\n",title,director,scriptwriter,actors,genre,nation,language,releaseTime,number);
	}
}

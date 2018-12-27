package com.lookoop.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.lookoop.film.Film;
import com.lookoop.film.FilmMapper;

@WebServlet("*.do")
public class FilmServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		// 获取请求路径
		String servletPath = request.getServletPath();
		// 截取请求名称
		String methodName = servletPath.substring(1, servletPath.length() - 3);
		
		try {
			// 构造会话工厂
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("config.xml"));
			
			// 打开会话
			SqlSession session = factory.openSession();
			
			FilmMapper mapper = session.getMapper(FilmMapper.class);
			
			// 通过反射调用对应的方法
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class,FilmMapper.class);
			method.invoke(this,request,response,mapper);
			
			session.commit();
			session.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 搜索电影
	public void search(HttpServletRequest request, HttpServletResponse response,FilmMapper mapper) throws ServletException, IOException{
		// 获取输入框的内容
		String title = request.getParameter("filmTitle");
		// 获取被选中的下拉列表项
		String val = request.getParameter("type");
		// 存放结果的集合
		ArrayList<Film> films = new ArrayList<>();
		switch(val) {
			case "title" : films = mapper.searchTitle(title);break;
			case "director" : films = mapper.searchDirec(title);break;
			case "genre" : films = mapper.searchGenre(title);break;
			case "time" : films = mapper.searchTime(title);break;
		}
		// 将所有电影的 magnetURI 属性拆分成一个集合并存入对应的实体类中
		for(Film film : films) {
			film.setURIList(film.getMagnetURI().split("\\*"));
		}
		// 将查询的结果存入session中
		request.getSession().setAttribute("films", films);
		// 重定向到搜索页面
		response.sendRedirect(request.getContextPath() + "/search.jsp");
	}
	public void testSearch(HttpServletRequest request, HttpServletResponse response,FilmMapper mapper) throws ServletException, IOException{
		String str = request.getParameter("testSearch");
		System.out.println(str);
		response.sendRedirect(request.getContextPath() + "/test.jsp");
	}
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name"); // 파라미터로 넘어오는 모든값은 String 형태이다.
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	new GuestbookDao().insertGuestbook(vo);
	response.sendRedirect("/guestbook"); // redirect 해주기 때문에 요청경로를 우회시켜서 /guestbook 으로 돌린다.
	// 특히 INSERT 를 할때는 redirect를 거의 필수로 해줘야한다고 생각하면됨
	
%>
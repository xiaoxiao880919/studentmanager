<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.ac.ucas.model.Student"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="cn.ac.ucas.model.Student"></jsp:useBean>
	<jsp:useBean id="stuService" class="cn.ac.ucas.service.StudentService"></jsp:useBean>
	<jsp:setProperty property="*" name="student" />
	<%
		 out.println(student.getName());
		 out.println(student.getNickname());
		 out.println(student.getGender());
		 out.println(student.getMajority());
		 out.println(student.getCourses());
		 out.println(student.getInterests());
		if( stuService.updateStu(student)==true){
	%>
	<jsp:forward page="showstu.jsp"></jsp:forward>
	<%
		}
	%>

</body>
</html>
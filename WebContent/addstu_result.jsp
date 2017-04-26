<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="student" class="cn.ac.ucas.model.Student"></jsp:useBean>
	<jsp:useBean id="studentService"
		class="cn.ac.ucas.service.StudentService"></jsp:useBean>
	<jsp:setProperty property="*" name="student" />
	<%
		/*   out.println(student.getBirth());
		  out.println(student.getCourse());
		  out.println(student.getCourses());
		  out.println("性别："+student.getGender());
		  out.println("兴趣："+student.getInterests()); */

		out.println(student.getOtherinfo());
		if (studentService.addStu(student)) {
	%>
<jsp:forward page="showstu.jsp"></jsp:forward>
	<%
		} else {
			out.println("error");
		}
	%>
</body>
</html>
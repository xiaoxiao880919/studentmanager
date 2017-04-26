<%@page import="cn.ac.ucas.model.Student"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看学生信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
body {
	width: 800px;
}
</style>
</head>
<jsp:include page="checklogin.jsp"></jsp:include>
<body>

	<h1 class="stu_title">查看学生信息</h1>
	<jsp:useBean id="stulist" class="cn.ac.ucas.service.StudentService"></jsp:useBean>
	<%
		List stus = stulist.getAllStudent();
		/* out.println(stus.size()); */
		Iterator iter = stus.iterator();
	%>
	<div class="showstu">
		<table>
			<tr>
				<td>id</td>
				<td>昵称</td>
				<td>姓名</td>
				<td>性别</td>
				<td>出生日期</td>
				<td>专业</td>
				<td>选择课程</td>
				<td>兴趣爱好</td>
				<td>备注</td>
				<td>修改</td>
				<td>删除</td>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {
					Student student = (Student) iter.next();
			%>
			<tr <%if (i % 2 == 0) {%> bgcolor="#ffffff" <%}%>>
				<td><%=student.getId()%></td>
				<td><%=student.getNickname()%></td>
				<td><%=student.getName()%></td>
				<td>
					<%
						if (student.getGender() == 1) {
								out.println("男");
							} else {
								out.println("女");
							}
					%>
				</td>
				<td><%=student.getBirth()%></td>
				<td><%=student.getMajority()%></td>
				<td><%=student.getCourses()%></td>
				<td><%=student.getInterests()%></td>
				<td><%=student.getOtherinfo()%></td>
				<td><a href="updatestu.jsp?id=<%=student.getId()%>">修改</a></td>
				<td><a href="deletestu.jsp?id=<%=student.getId()%>">删除</a></td>
			<tr>
				<%
					i++;
					}
				%>
			
		</table>

	</div>
</body>
</html>
<%@page import="cn.ac.ucas.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改学生信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<jsp:useBean id="stuService" class="cn.ac.ucas.service.StudentService"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		out.println(id);

		Student stu = stuService.getStuById(id);
		out.println(stu.getNickname());
		out.println(stu.getCourses());
		out.println(stu.getCourse());
		out.println(stu.getMajority());
		out.println(stu.getInterests());
		out.println(stu.getInterest());
	%>

	<h1 class="stu_title">修改学生信息</h1>
	<div class="add_stu">
		<form action="update_result.jsp" method="post">
			<table>
				<tr>
					<td>昵称：</td>
					<td>
					<input type="hidden" name="id" value="<%=stu.getId()%>">
					<input type="text" name="nickname"
						value="<%=stu.getNickname()%>" /></td>
				</tr>
				<tr>
					<td>真实姓名：</td>
					<td><input type="text" name="name" value="<%=stu.getName()%>" /></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>男<input class="short_input" type="radio" name="gender"
						value="1" <%if (stu.getGender() == 1) {%> checked <%}%> />
						女<input class="short_input" type="radio" name="gender" value="0"
						<%if (stu.getGender() == 0) {%> checked <%}%> />

					</td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td><input type="text" name="birth"
						value="<%=stu.getBirth()%>" /></td>
				</tr>
				<tr>
					<td>专业：</td>
					<td><select name="majority">
							<option <%if(stu.getMajority().equals("计算机科学与技术")){%>selected<% } %>>计算机科学与技术</option>
							<option <%if(stu.getMajority().equals("电子")){%>selected<% } %>>电子</option>
							<option <%if(stu.getMajority().equals("自动化")){%>selected<% } %>>自动化</option>
							<option <%if(stu.getMajority().equals("电气工程")){%>selected<% } %>>电气工程</option>
					</select></td>
				</tr>
				<tr>
					<td>选择课程：</td>
					<td><select name="course" multiple="multiple">
							<option <%if(stu.getCourses().indexOf("数据结构")!=-1){ %>selected<%} %> >数据结构</option>
							<option <%if(stu.getCourses().indexOf("算法设计")!=-1){ %>selected<%} %>>算法设计</option>
							<option <%if(stu.getCourses().indexOf("操作系统")!=-1){ %>selected<%} %>>操作系统</option>
							<option <%if(stu.getCourses().indexOf("计算机网络")!=-1){ %>selected<%} %>>计算机网络</option>
					</select></td>
				</tr>
				<tr>
					<td>兴趣爱好：</td>
					<td>
						音乐：<input class="short_input" type="checkbox" name="interest" value="音乐" <%if(stu.getInterests().indexOf("音乐")!=-1){ %>checked<%}%>> 
						电影：<input class="short_input" type="checkbox"name="interest"  value="电影" <%if(stu.getInterests().indexOf("电影")!=-1){ %>checked<%}%>> 
						小说：<input class="short_input"type="checkbox" name="interest"  value="小说" <%if(stu.getInterests().indexOf("小说")!=-1){ %>checked<%}%>> 
						运动：<input class="short_input" type="checkbox" name="interest" value="运动" <%if(stu.getInterests().indexOf("运动")!=-1){ %>checked<%}%>>
						摄影：<input class="short_input" type="checkbox" name="interest" value="摄影" <%if(stu.getInterests().indexOf("摄影")!=-1){ %>checked<%}%>>
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td><textarea name="otherinfo" rows="5" cols="40"
							name="<%=stu.getOtherinfo()%>"></textarea></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="提交"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>
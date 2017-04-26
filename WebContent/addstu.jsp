<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">

   body{
     width:800px;
   }
</style>
</head>
<body>
	<h1 class="stu_title">增加学生信息</h1>
	<div class="add_stu">
		<form  action="addstu_result.jsp" method="post">
			<table>
				<tr>
					<td>昵称：</td>
					<td><input type="text" name="nickname" /></td>
				</tr>
				<tr>
					<td>真实姓名：</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>
					    男<input class="short_input" type="radio" name="gender" value="1" checked />
					    女<input class="short_input" type="radio" name="gender" value="0"/>
					
					</td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td><input type="text" name="birth" /></td>
				</tr>
				<tr>
					<td>专业：</td>
					<td>
					  <select name="majority">
					     <option>计算机科学与技术</option>
					     <option>电子</option>
					     <option>自动化</option>
					     <option>电气工程</option>
					  </select>
					</td>
				</tr>
				<tr>
					<td>选择课程：</td>
					<td>
					   <select name="course" multiple="multiple">
					      <option>数据结构</option>
					      <option>算法设计</option>
					      <option>操作系统</option>
					      <option>计算机网络</option>
					   </select>
					</td>
				</tr>
				<tr>
					<td>兴趣爱好：</td>
					<td>
					  音乐：<input class="short_input" type="checkbox"  name="interest" value="音乐" >
					  电影：<input class="short_input"  type="checkbox" name="interest" value="电影" >
					  小说：<input class="short_input"  type="checkbox" name="interest" value="小说" >
					  运动：<input class="short_input"  type="checkbox" name="interest" value="运动" >
					  摄影：<input class="short_input"  type="checkbox" name="interest" value="摄影" >
					
					</td>
				</tr>
				<tr>
					<td>备注：</td>
					<td><textarea name="otherinfo" rows="5" cols="40"></textarea></td>
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
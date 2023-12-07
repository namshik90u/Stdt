<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리</title>
</head>
	
	<style>
		h1{
			text-align:center;
		}
		table{
			margin:Auto;
		}
		div{
			text-align:center;
		}
	</style>
	<%
		String Student = request.getParameter("Student");
		String Name = "";
		String HK="";
		String Grade="";
		String Info="조회자:한국인 비번:1024 조회일:2019-10-31";
		
			if("0001".equals(Student)){
				Name="홍길동";
				HK="AI응용용소프트웨어과";
				Grade="1";
			}
			else if("0002".equals(Student)){
				Name="고길동";
				HK="IOT소프트웨어과";
				Grade="2";
			}
			else{
				%><script>alert('조회된 결과가 없습니다.');
				location.href='index.html';
				</script><%
			}
		%>	
<body>
	<h1>학생 조회</h1>
		<table border="1">
			<tr>
				<td colspan="2"><center>학생 조회 결과</center></td>
			</tr>
			<tr>
				<td>학번</td>
				<td><%=Student %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=Name %></td>
			</tr>
			<tr>
				<td>학과명</td>
				<td><%=HK %></td>
			</tr>
			<tr>
				<td>학년</td>
				<td><%=Grade %></td>
			</tr>
		</table>
		<br>
		<div><%=Info %></div>
</body>
</html>
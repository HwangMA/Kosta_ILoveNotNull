<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

/*table {
	text-align: center;
    border-collapse: collapse;
    width: 100%;
}

th, td {
	border-style: solid;
	border-width: 1px;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}*/

html,
body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	text-align: center;
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	border-style:solid;
	border-width:1px;
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: center;
}

thead {
	th {
		background-color: #55608f;
	}
}
a{
	color: #fff;
	text-decoration: none;
	
}
a:hover{
	color:rgba(255,255,255,0.8);
}
</style>
</head>
<body>
<div class="container">
	<table>
		<thead>
			<tr>
				<th>TIME</th>
				<th>MON</th>
				<th>TUE</th>
				<th>WEN</th>
				<th>THU</th>
				<th>FRI</th>
				<th>SAT</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach begin="1" end="8" varStatus="countOfClassTime">
				<tr>
					<td>${countOfClassTime.count }</td>
					<c:forEach begin="0" end="5" varStatus="week">
					<td><c:forEach items="${timetable_list }" var="list">
							<c:if test="${list.timeOfClass==countOfClassTime.count&&list.dateOfWeek==week.index }">
								<a href="">${list.className }<br>${list.teacherName }</a><br>
							</c:if>
						</c:forEach></td>
				</c:forEach>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>
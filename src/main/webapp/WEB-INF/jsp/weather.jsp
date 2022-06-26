<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Погода</title>
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/weather.css">
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/weather" user="user" password="password" />
	<sql:query dataSource="${snapshot}" var="result">
         SELECT * from minsk_weather;
    </sql:query>
    <h2>Среднестатистическая погода в Минске по месяцам</h2>
    <table>
         <tr>
            <th>№ п/п</th>
            <th>Месяц</th>
            <th>Средняя температура, °C</th>
            <th>Средняя влажность, %</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.month}"/></td>
               <td><c:out value = "${row.average_temperature}"/></td>
               <td><c:out value = "${row.average_humidity}"/></td>
            </tr>
         </c:forEach>
      </table>
      <footer>
		<a href="start">В меню</a>
	</footer>
</body>
</html>
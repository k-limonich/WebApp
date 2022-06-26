<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Поиск имен</title>
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/namefinder.css">
	<script type="text/javascript">
		function fn() {
		    myString = document.getElementById("fletter").value;
		    patt = /^\p{L}$/u;
		    x = patt.test(myString);
		    if (!x) {
		    	alert("Введите только одну букву");
		    }
		}
	</script>
</head>
<body>
	<h2>Поиск популярных имен</h2>
	<div class="main-content">
		<c:set var="firstletter" value="${param.firstletter}" />
		<c:set var="namelength" value="${param.namelength}" />
		<form action="namefinder">
		    <input type="text" id="fletter" name="firstletter" placeholder="Первая буква имени" 
		    	value="${firstletter}" autocomplete="off">
		    <br>
		    <input type="number" id="nlength" name="namelength" min=3 max=15 placeholder="Длина имени" 
		    	value="${namelength}" autocomplete="off">
		    <br>
		    <input class="button" type="submit" value="Найти" onClick="fn()">
	  	</form>
		<br>
		<c:if test="${firstletter ne null && namelength ne null}">
			<c:forEach var="name" items="${names}" >
				<c:if test="${fn:startsWith(name, firstletter) && fn:length(name) eq namelength}">
					<h3>${name}</h3>
				</c:if>
			</c:forEach>
		</c:if>
	</div>
	<footer>
		<a href="start">В меню</a>
	</footer>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/palindrome.css">
</head>
<body>
	<h2>Проверка на палиндром</h2>
	<c:set var="test_string" value="${string}" />
	<div class="main-content">
		<form id="input_form" action="palindrome" method="POST">
			<input type="text" id="string" name="string" value="${test_string}" placeholder="Введите текст"
				autocomplete="off"><br><br>
			<input class="button" type="submit" value="Проверить">
		</form>
		<br>
		<c:choose>
			<c:when test="${isPalindrome eq true}">
				<h3 class="palindrome">Палиндром</h3>
			</c:when>
			<c:when test="${isPalindrome eq false}">
				<h3 class="palindrome">Не палиндром</h3>
			</c:when>
			<c:otherwise>
				<c:remove var="test_string" />
			</c:otherwise>
		</c:choose>
	</div>
	<footer>
		<a href="start">В меню</a>
	</footer>
</body>
</html>
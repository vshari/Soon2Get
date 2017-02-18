<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

</head>

<body>

<h3><center> Shopping Cart <center></center></h3>

<center>${msg}</center>

<center>${successMessage}</center>

<center>${errorMessage}</center>

${loginMessage}

<hr>
<jsp:include page="menu1.jsp"></jsp:include>



<c:if test="${empty loginMessage}">

<a href="login"> Login </a><br>

</c:if>



<c:if test="${hasClickedLogin==true}">

<jsp:include page="login.jsp"></jsp:include><br>

</c:if>



<c:if test="${not empty errorMessage}">    

<jsp:include page="login.jsp"></jsp:include><br>

</c:if>







<a href="register"> Registration </a><br>

<c:if test="${hasClickedRegistration==true}">

<jsp:include page="registration.jsp"></jsp:include><br>

</c:if>





<c:if test="${not empty loginMessage}">

<a href="logout">Logout </a><br>

<a href="mycart">My Carts </a><br>

</c:if>









</body>

</html>
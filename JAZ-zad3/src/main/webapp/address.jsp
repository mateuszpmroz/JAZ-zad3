<%@page import="com.pjatk.loanapp.domain.Address"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pożyczki</title>
</head>
<body>
<jsp:useBean id="address" class="com.pjatk.loanapp.domain.Address" scope="session"/>
<jsp:setProperty property="*" name="address"/>

<form action="success.jsp">
    Miasto: <input type="text" name="city"><br
    Kod pocztowy: <input type="text" name="zipCode"><br>
    Nazwa ulicy: <input type="text" name="street"><br>
    Nr domu: <input type="text" name="houseNumber"><br>
    Nr telefonu: <input type="text" name="phoneNumber"><br>
    <input type="submit" value="Wyslij">
</form>
</body>
</html>
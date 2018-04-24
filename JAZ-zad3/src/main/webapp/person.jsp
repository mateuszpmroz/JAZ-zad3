<%@page import="com.pjatk.loanapp.domain.LoanApplication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pożyczki</title>
</head>
<body>
<jsp:useBean id="parameters" class="com.pjatk.loanapp.domain.LoanParameters" scope="session" />

<jsp:setProperty property="*" name="parameters"/>

Numer wniosku: ${loan.number}<br>
Wnioskowana kwota: ${parameters.amount}

<form action="address.jsp">
    Imię: <input type="text" id="firstName" name="firstName"><br>
    Nazwisko: <input type="text" id="surname" name="surname"><br>
    Nr pesel: <input type="text" id="pesel" name="pesel"><br>
    <input type="submit"  value="Wyslij">
</form>
</body>
</html>
<%@page import="java.util.Date"%>
<%@page import="com.pjatk.loanapp.domain.LoanApplication"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pożyczki</title>
</head>
<body>
<%!
    private Random generator = new Random();
%>

<%
    String number = "" + generator.nextInt();
%>

<jsp:useBean id="loan" class="com.pjatk.loanapp.domain.LoanApplication" scope="session"/>
<jsp:setProperty property="number" name="loan" value="<%=number %>"/>
<jsp:setProperty property="date" name="loan" value="<%=new Date() %>"/>

Wygenerowany numer wniosku: <%=loan.getNumber() %>
<br>
Data wygenerowania: <%=loan.getDate() %>
<form action="person.jsp">
Wnioskowana kwota: <input type="number" name="amount"><br>
Ilość rat: <input type="number" name="installmentCount"><br>
<input type="submit" value="Wyslij"><br>
</form>
</body>
</html>
<%@page import="com.pjatk.loanapp.domain.LoanApplication"%>
<%@page import="com.pjatk.loanapp.domain.Address"%>
<%@page import="com.pjatk.loanapp.domain.LoanParameters"%>
<%@page import="com.pjatk.loanapp.domain.Person"%>
<%@page import="com.pjatk.loanapp.service.LoanService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pożyczki</title>
</head>
<body>
<jsp:useBean id="LoanService" class="com.pjatk.loanapp.service.LoanService" scope="application" />
<jsp:useBean id="Loan" class="com.pjatk.loanapp.domain.LoanApplication" scope="session" />
<jsp:useBean id="parameters" class="com.pjatk.loanapp.domain.LoanParameters" scope="session" />
<jsp:useBean id="person" class="com.pjatk.loanapp.domain.Person" scope="session" />
<jsp:useBean id="address" class="com.pjatk.loanapp.domain.Address" scope="session" />

<jsp:setProperty property="*" name="person"/>
<jsp:setProperty property="*" name="address"/>

<%
    Loan.setLoanParameters(parameters);
    Loan.setPerson(person);
    LoanService.add(Loan);
    Loan.setAddress(address);
%>
<ul>
<%
    for(LoanApplication loanApplication: LoanService.getAll()){
%>
<li>Wniosek:<%=loanApplication.getNumber()
+ " Osoba "
+ loanApplication.getPerson().getFirstName()
+ " "
+ loanApplication.getPerson().getSurname()
+ " Adres "
+ loanApplication.getAddress().getCity()
+ " "
+ loanApplication.getAddress().getStreet()
+ " "
+ loanApplication.getAddress().getHouseNumber()
+ " Kwota "
+ loanApplication.getLoanParameters().getAmount() %></li>
<%
    }
%>
</ul>
</body>
</html>
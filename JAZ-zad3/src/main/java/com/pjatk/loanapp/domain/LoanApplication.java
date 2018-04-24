package com.pjatk.loanapp.domain;

import java.util.Date;

public class LoanApplication {
    private Person person;
    private Address address;
    private LoanParameters loanParameters;
    private String number;
    private Date date;

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public LoanParameters getLoanParameters() {
        return loanParameters;
    }

    public void setLoanParameters(LoanParameters loanParameters) {
        this.loanParameters = loanParameters;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}

package com.example;

// import java.io.Serializable;

public class UserExtended extends User {
    private String dateOfBirth;
    private String acquisition;
    private String contact;

    public UserExtended(String firstName, String lastName, String email, String dateOfBirth, String acquisition,
            String contact) {
        super(firstName, lastName, email);
        this.dateOfBirth = dateOfBirth;
        this.acquisition = acquisition;
        this.contact = contact;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAcquisition() {
        return acquisition;
    }

    public void setAcquisition(String acquisition) {
        this.acquisition = acquisition;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
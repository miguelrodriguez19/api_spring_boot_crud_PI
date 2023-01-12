package com.miguel.api_spring_boot_crud.model;

import java.io.Serializable;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cod_user;
    private String name;
    private String surname;
    private String email;
    private String birthday;
    private String password;

    public User(int id, String name, String surname, String email, String birthday, String password) {
        this.cod_user = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.birthday = birthday;
        this.password = password;
    }

    public User() {
    }

    // Getter and Setters

    public int getCod_user() {
        return cod_user;
    }

    public void setCod_user(int id) {
        this.cod_user = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   
}

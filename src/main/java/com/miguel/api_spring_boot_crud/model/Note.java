package com.miguel.api_spring_boot_crud.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.*;

@Entity
@Table(name = "notes")
public class Note {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cod_note;
    private String tittle;
    private String content;
    private String creation_date;
    private String modification_date;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cod_user")
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    private User user;

    public Note(int cod_note, String tittle, String content, String creation_date, String modification_date,
            User user) {
        this.cod_note = cod_note;
        this.tittle = tittle;
        this.content = content;
        this.creation_date = creation_date;
        this.modification_date = modification_date;
        this.user = user;
    }

    public Note() {
    }

    
    public int getCod_note() {
        return cod_note;
    }

    public void setCod_note(int cod_note) {
        this.cod_note = cod_note;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(String creation_date) {
        this.creation_date = creation_date;
    }

    public String getModification_date() {
        return modification_date;
    }

    public void setModification_date(String modification_date) {
        this.modification_date = modification_date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Note [cod_note=" + cod_note + ", tittle=" + tittle + ", content=" + content + ", creation_date="
                + creation_date + ", modification_date=" + modification_date + ", user=" + user + "]";
    }
}

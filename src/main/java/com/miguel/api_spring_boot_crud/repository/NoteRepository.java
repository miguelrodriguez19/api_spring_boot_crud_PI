package com.miguel.api_spring_boot_crud.repository;

import com.miguel.api_spring_boot_crud.model.Note;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface NoteRepository extends JpaRepository<Note, Integer>{
    
    /* 
    @Query("Select cod_note, tittle, content, creation_date, modification_date, cod_user from notes where cod_user = :var_parm")
    public abstract List<Note> listByUser(@Param("var_parm") int filter);
    */
}

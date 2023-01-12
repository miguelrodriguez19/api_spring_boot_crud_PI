package com.miguel.api_spring_boot_crud.controller;


import com.miguel.api_spring_boot_crud.model.Note;
import com.miguel.api_spring_boot_crud.service.NoteServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/notes")
public class NoteController {

    @Autowired
    NoteServiceImpl noteServiceImpl;

    @GetMapping("/all")
    public List<Note> list() {
        return noteServiceImpl.listAllNotes();
    }
 
    @GetMapping("/{id}")
    public ResponseEntity<Note> get(@PathVariable Integer id) {
        try {
            Note note = noteServiceImpl.getNote(id);
            try {
                System.out.println(note.toString());
            } catch (Exception e) {
                System.err.println("Error print note controller -> getNote(int)");
            }
            return new ResponseEntity<Note>(note, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<Note>(HttpStatus.NOT_FOUND);
        }
    }
/* 
    @GetMapping("/listByUser/{id}")
    public ResponseEntity<List<Note>> getList(@PathVariable int id) {
        try {
            List<Note> listNote = noteServiceImpl.listByUser(id);
            try {
                System.out.println(listNote.toString());
            } catch (Exception e) {
                System.err.println("Error print note controller -> listByUser(int)");
            }
            return new ResponseEntity<List<Note>>(listNote, HttpStatus.OK); 
        } catch (NoSuchElementException e) {
            return new ResponseEntity<List<Note>>(HttpStatus.NOT_FOUND);
        }
    }
*/
    @PostMapping("/post")
    //Este metodo guardará al usuario enviado
    public void add(@RequestBody Note note) {
        noteServiceImpl.updateNote(note);
    }

    @PutMapping("/put/{id}")
    public ResponseEntity<?> update(@RequestBody Note note, @PathVariable Integer id) {
        try {
            Note existNote = noteServiceImpl.getNote(id);
            note.setCod_note(id);            
            noteServiceImpl.updateNote(note);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Integer id) {

        noteServiceImpl.deleteNote(id);
    }
}


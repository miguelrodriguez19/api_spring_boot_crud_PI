package com.miguel.api_spring_boot_crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Service;

import com.miguel.api_spring_boot_crud.model.Note;
import com.miguel.api_spring_boot_crud.repository.NoteRepository;


@Service
@Transactional
public class NoteServiceImpl implements NoteService {

    @Autowired
    private NoteRepository noteRepository;

    @Override
    public List<Note> listAllNotes() {
        return noteRepository.findAll();
    }

    @Override
    public Note getNote(int id) {
        return noteRepository.findById(id).get();
    }
/* 
    @Override
    public List<Note> listByUser(int filter) {
        return noteRepository.listByUser(filter);
    }
*/
    @Override
    public void updateNote(Note note) {
        noteRepository.save(note);
    }

    @Override
    public void deleteNote(int id) {
        noteRepository.deleteById(id);
    }

}

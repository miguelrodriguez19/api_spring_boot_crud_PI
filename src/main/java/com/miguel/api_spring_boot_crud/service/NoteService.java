package com.miguel.api_spring_boot_crud.service;

import java.util.List;
import java.util.Optional;

import com.miguel.api_spring_boot_crud.model.Note;

public interface NoteService {
    public abstract List<Note> listAllNotes();

    public abstract Note getNote(int id);

    // public abstract List<Note> listByUser(int filter);

    public abstract void updateNote(Note obj);

    public abstract void deleteNote(int id);
}

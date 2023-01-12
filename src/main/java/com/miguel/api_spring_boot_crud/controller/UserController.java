package com.miguel.api_spring_boot_crud.controller;

import com.miguel.api_spring_boot_crud.model.User;
import com.miguel.api_spring_boot_crud.service.UserServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/users")
public class UserController {

    // Inyectamos el servicio para poder hacer uso de el
    @Autowired
    UserServiceImpl userServiceImpl;

    /* Este método se hará cuando por una petición GET (como indica la anotación) se llame a la url 
    http://localhost:8080/users/all 
    */
    @GetMapping("/all")
    public List<User> list() {
        return userServiceImpl.listAllUsers();
    }
 
    /* Este método se hará cuando por una petición GET (como indica la anotación) se llame a la url + el id de un usuario
    http://localhost:8080/users/{id} --> Por ejemplo: http://localhost:8080/users/1
    */
    @GetMapping("/{id}")
    public ResponseEntity<User> get(@PathVariable Integer id) {
        try {
            User user = userServiceImpl.getUser(id);
            try {
                System.out.println(user.toString());
            } catch (Exception e) {
                System.err.println("Error print user controller");
            }
            return new ResponseEntity<User>(user, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
    }

    /* Este método se hará cuando por una petición POST (como indica la anotación) se llame a la url
    http://localhost:8080/users/  
    */
    @PostMapping("/post")
    //Este metodo guardará al usuario enviado
    public void add(@RequestBody User user) {
        userServiceImpl.updateUser(user);
    }

    /*Este método se hará cuando por una petición PUT (como indica la anotación) se llame a la url
    http://localhost:8080/users/put/{id} 
    */
    @PutMapping("/put/{id}")
    //Este metodo guardará al usuario actualizado
    public ResponseEntity<?> update(@RequestBody User user, @PathVariable Integer id) {
        try {
            User existUser = userServiceImpl.getUser(id);
            user.setCod_user(id);            
            userServiceImpl.updateUser(user);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    /*Este método se hará cuando por una petición DELETE (como indica la anotación) se llame a la url + id del usuario
    http://localhost:8080/users/delete/{id}
    */
    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Integer id) {

        userServiceImpl.deleteUser(id);
    }
}

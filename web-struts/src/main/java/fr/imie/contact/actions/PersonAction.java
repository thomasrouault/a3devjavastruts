package fr.imie.contact.actions;

import com.opensymphony.xwork2.ActionSupport;
import fr.imie.contact.DateUtils;
import fr.imie.contact.entities.Person;
import fr.imie.contact.repositories.PersonRepository;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

//@WebServlet("/person/*")
public class PersonAction extends ActionSupport {

    @Inject
    private PersonRepository repository;

    private Person person;

    private List<Person> persons;

    public List<Person> getPersons() {
        return persons;
    }

    public void setPersons(List<Person> persons) {
        this.persons = persons;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public String save() {
//        repository.save();
        return SUCCESS;
    }
    public String deleteById() {
//        repository.deleteById(id);
        return SUCCESS;
    }
    public String findAll() {
//        List<Person> persons = repository.findAll();
//        request.setAttribute("persons", persons);
        return SUCCESS;
    }

}
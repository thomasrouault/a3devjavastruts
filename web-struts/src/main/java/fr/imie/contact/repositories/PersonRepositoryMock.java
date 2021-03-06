package fr.imie.contact.repositories;

import fr.imie.contact.entities.Person;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PersonRepositoryMock implements PersonRepository {

    private static Map<Integer, Person> persons = new TreeMap();

    private static int autoIncrement = 1;

    static {
        PersonRepositoryMock mock = new PersonRepositoryMock();
        mock.save(new Person("anakin", "skywalker"));
        mock.save(new Person("luke", "skywalker"));
        mock.save(new Person("leia", "organa"));
    }

    public void save(Person person) {
        if(person.getId() == null){
            persons.put(autoIncrement, person);
            person.setId(autoIncrement);
            autoIncrement++;
        }else {
            persons.put(person.getId(), person);
        }
    }

    public List<Person> findAll() {
        return new ArrayList(persons.values());
    }

    public Person findById(int id) {
        return persons.get(id);
    }

    public void deleteById(int id) {
        persons.remove(id);
    }

}
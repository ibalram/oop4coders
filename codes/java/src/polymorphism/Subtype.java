package polymorphism;

public class Subtype {
    public static void announce(String msg, Person p) {
        System.out.print(msg + ": ");
        p.talk();
    }
    //...
    public static void announce2(String msg, Machine m) {
        System.out.print(msg + ": ");
        m.talk();
    }
    public static void main(String[] args) {
        Person pe = new Person();
        Student st = new Student();
        Professor pr = new Professor();

        announce("Person", pe);
        announce("Student", st);
        announce("Professor", pe);

        System.out.println("Table of Person");
        Person[] people = {pe, st, pr};
        for (Person p: people) { p.talk(); }

        Robot ro = new Robot();
        Cyborg cy = new Cyborg();

        announce2("Robot", ro);
        announce2("Cyborg", cy);
        announce("Cyborg", cy);
    }
}

class Person {
    public void talk(){
        System.out.println("I am a person");
    }
}

interface Machine {
    public void talk();
}

class Student extends Person {}

class Professor extends Person {}

class Robot implements Machine {
    public void talk(){
        System.out.println("I am a robot");
    }
}

class Cyborg extends Person implements Machine {}

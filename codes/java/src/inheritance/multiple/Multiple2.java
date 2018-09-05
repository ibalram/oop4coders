package inheritance.multiple;

public class Multiple2 {

    public static void main(String[] args) {

        Person2 a = new Person2("person1");
        a.info();
        System.out.println("=====================");
        Student2 s = new Student2("student1", 12.5);
        s.info();
        System.out.println("=====================");
        Professor2 p = new Professor2("professor1", 8);
        p.info();
        System.out.println("=====================");
        PhdStudent2 ps = new PhdStudent2("phDstudent1", 4, 11.25);
        ps.info();
        System.out.println("=====================");
    }

}

interface ProfessorBehavior2 extends HumanBehavior {
    default void info(){
        System.out.println("Professor");
    }
}

interface StudentBehavior2 extends HumanBehavior {
    default void info(){
        System.out.println("Student");
    }
}

class Person2 {
    protected String name;
    public Person2(String name){
        this.name = name;
    }

    public void info() {
        System.out.println("my name: " + name);
    }
}

class Student2 extends Person2 implements StudentBehavior2 {
    protected double mark;
    public Student2(String name, double mark){
        super(name);
        this.mark = mark;
    }

    public void info() {
        StudentBehavior2.super.info();
        super.info();
        System.out.println("my mark: " + mark);
    }
}

class Professor2 extends Person2 implements ProfessorBehavior2 {
    protected int hours;
    public Professor2(String name, int hours){
        super(name);
        this.hours = hours;
    }
    public void info() {
        ProfessorBehavior2.super.info();
        super.info();
        System.out.println("my work hours: " + hours);
    }
}


class PhdStudent2 extends Person2 implements StudentBehavior2, ProfessorBehavior2 {
    protected double mark;
    protected int hours;
    public PhdStudent2(String name, int hours, double mark){
        super(name);
        this.hours = hours;
        this.mark = mark;
    }

    public void info() {
        StudentBehavior2.super.info();
        ProfessorBehavior2.super.info();
        super.info();
        System.out.println("my mark: " + mark);
        System.out.println("my work hours: " + hours);
    }
}

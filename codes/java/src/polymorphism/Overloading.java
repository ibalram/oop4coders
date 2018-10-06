package polymorphism;

public class Overloading {
    public static void main(String[] args) {
        Person pe = new Person();
        Student st = new Student();

        System.out.println("PERSON");
        pe.read();
        pe.read("I am a person");

        System.out.println("STUDENT");
        st.read();
        st.read("I am a student");
        st.read(5);
    }
}

class Person {
    public void read(){ System.out.println("I am a reading"); }
    public void read(String  text){ System.out.println("A text: " + text); }
}

class Student extends Person {
    public void read(int nbr){ System.out.println("I read on table n°: " + nbr); }
}

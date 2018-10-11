package polymorphism;

public class Overriding {
    public static void main(String[] args) {
        Person pe = new Person();
        Person st = new Student();
        pe.talk(); // I am a person
        st.talk(); // I am a student
    }
}

class Person {
    public void talk(){ System.out.println("I am a person"); }
}

class Student extends Person {
    @Override
    public void talk(){ System.out.println("I am a student"); }
}

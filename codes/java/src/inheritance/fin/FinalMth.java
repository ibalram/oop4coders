package inheritance.fin;

public class FinalMth {

    public static void main(String[] args) {
        Person p = new Person();
        Student s = new Student();

        p.method();
        s.method();

        p.finalMethod();
        s.finalMethod();
    }

}

class Person {
    public void method(){
        System.out.println("Person method");
    }
    public final void finalMethod(){
        System.out.println("Person final method");
    }
}

class Student extends Person {
    public void method(){
        System.out.println("Student method");
    }
    //public final void finalMethod(){}//cannot override
}

package polymorphism;

import java.lang.reflect.*;

public class TypeManip {
    public static void testMembers(Object obj) {
        try {
            Method learnM = obj.getClass().getMethod("learn");
            learnM.invoke(obj, new Object[]{});
        }
        catch (Throwable t) {
            System.out.println("Method learn does not exist!");
        }

        try {
            Field nbrF = obj.getClass().getField("nbr");
            System.out.println("Field nbr = " + nbrF.get(obj));
        }
        catch (Throwable t) {
            System.out.println("Field nbr does not exist!");
        }
    }
    public static void main(String[] args) {
        Person pe = new Person();
        Person st = new Student();
        Person pr = new Professor();

        System.out.println("==========================");
        System.out.println("Object type");
        System.out.println("==========================");
        System.out.println("Type of pe: " + pe.getClass().getName());
        System.out.println("Type of st: " + st.getClass().getName());
        System.out.println("Type of pr: " + pr.getClass().getName());

        System.out.println("==========================");
        System.out.println("Instance of");
        System.out.println("==========================");
        System.out.println("pe instanceof Person: " + (pe instanceof Person));
        System.out.println("st instanceof Person: " + (st instanceof Person));
        System.out.println("st instanceof Student: " + (st instanceof Student));
        System.out.println("st instanceof Professor: " + (st instanceof Professor));
        System.out.println("pr instanceof Person: " + (pr instanceof Person));
        System.out.println("pr instanceof Student: " + (pr instanceof Student));
        System.out.println("pr instanceof Professor: " + (pr instanceof Professor));
        System.out.println("pr instanceof Worker: " + (pr instanceof Worker));

        System.out.println("==========================");
        System.out.println("Member existance");
        System.out.println("==========================");
        testMembers(pe);
        testMembers(st);
        testMembers(pr);

        System.out.println("==========================");
        System.out.println("Casting");
        System.out.println("==========================");
        Student st2 = (Student) st;
        st2.learn();
        Professor pr2 = (Professor) pr;
        pr2.teach();
        pr2.work();
        ((Worker) pr).work();
    }
}

class Person {
    public void talk(){
        System.out.println("I am talking");
    }
}

class Student extends Person {
    public void learn(){
        System.out.println("I am learning");
    }
}

interface Worker {
    default public void work(){
        System.out.println("I am working");
    }
}

class Professor extends Person implements Worker {
    public int nbr = 5;
    public void teach(){
        System.out.println("I am teaching");
    }
}

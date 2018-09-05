package inheritance.multiple;

public class Diamond1 {

    public static void main(String[] args) {
        PhdStudent ps = new PhdStudent();
        ps.info();
    }

}

interface HumanBehavior {
    default void info(){
        System.out.println("Person");
    }
}

interface ProfessorBehavior extends HumanBehavior {}

interface StudentBehavior extends HumanBehavior {
    default void info(){
        System.out.println("Student");
    }
}

class PhdStudent implements StudentBehavior, ProfessorBehavior {}

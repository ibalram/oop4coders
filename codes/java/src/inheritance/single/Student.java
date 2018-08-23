package inheritance.single;

public class Student extends Person {

    private int grade;

    public Student(String name, int grade) {
        super(name);
        this.grade = grade;
    }

    public void info(){
        super.info();
        System.out.println("My grade is: " + grade);
    }

}

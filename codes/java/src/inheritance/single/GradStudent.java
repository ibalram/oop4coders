package inheritance.single;

public class GradStudent extends Student {

    public GradStudent(String name, int grade) {
        super(name, grade);
        //super.super.info();//error: <identifier> expected
        //super.super.luckyNumber = 10;//error: <identifier> expected
    }

}

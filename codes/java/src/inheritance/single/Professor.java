package inheritance.single;

public class Professor extends Person {
    static int num = 0;
    private int luckyNumber = 9;
    public Professor() {
        super("Professor" + num);
        num++;
    }

    public void info2() {
        System.out.println("Professor info2, luckyNumber: " + luckyNumber);
        System.out.println("Professor info2, super.luckyNumber: " + super.luckyNumber);
    }

}

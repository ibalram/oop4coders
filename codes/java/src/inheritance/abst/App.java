package inheritance.abst;

public class App {

    public static void main(String[] args) {
        //Person pe = new Person();//is abstract; cannot be instantiated
        //Student st = new Student();//is abstract; cannot be instantiated
        Professor pr = new Professor();
        GradStudent gs = new GradStudent();

        pr.info();
        gs.info();
    }

}

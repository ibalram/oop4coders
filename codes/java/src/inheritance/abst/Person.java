package inheritance.abst;

public abstract class Person {

    public void info() {
        System.out.println("====INFO===");
        info2();
    }

    public abstract void info2();

}

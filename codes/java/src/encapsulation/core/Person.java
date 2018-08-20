package encapsulation.core;

public class Person {

    public int luckyNumber;
    int luckyNumber2;
    protected String t;
    private String name;
    private int num;
    private static int nbr;

    public Person(String name) {
        this.name = name;
        num = (nbr++);
        t = "person";
        luckyNumber = 0;
        luckyNumber2 = 0;
    }

    public void info() {
        System.out.println("My name: " + name);
        System.out.println("My number: " + num);
        System.out.println("I am a: " + t);
        System.out.println("My lucky number is: " + luckyNumber);
        System.out.println("My lucky number 2 is: " + luckyNumber2);
        System.out.println("--------------------------");
    }

    public void copy(Person other) {
        num = other.num;
        t = other.t;
    }

}

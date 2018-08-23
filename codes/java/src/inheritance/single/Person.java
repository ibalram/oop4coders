package inheritance.single;

public class Person {

    public int luckyNumber;
    private String name;

    public Person(String name) {
        this.name = name;
        luckyNumber = 0;
    }

    public void info() {
        System.out.println("My name: " + name);
        System.out.println("My lucky number is: " + luckyNumber);
    }

    private void info2() {
        System.out.println("Person.info2");
    }

}

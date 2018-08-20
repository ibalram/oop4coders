package clsobj;

public class Person {

    private String name;
    private int byear;
    private static int nbr = 0;

    public Person(String name, int byear){
        this.name = name;
        this.byear = byear;
        nbr++;
    }

    @Override
    public void finalize() {
        nbr--;
        System.out.println(name + " is out");
    }

    public void info(){
        System.out.print("My name is: " + name);
        System.out.println(", My birth year is: " + byear);
    }

    public static int population() {
        return nbr;
    }

    public static void main(String[] args) {
        Person p = new Person("Karim", 1986);
        Person p2 = new Person("Karim+1", 1987);

        p.info();
        p2.info();
        int nbr = Person.population();

        System.out.println("The number of persons: " + nbr);
        p2 = null;
        nbr = Person.population();
        System.out.println("The number of persons: " + nbr);
    }
}

package inheritance.multiple;

public class Multiple1 {

    public static void main(String[] args) {
        Person p = new Person();
        //p.info();
        System.out.println("=====================");
        Machine m = new Machine();
        //m.info();
        System.out.println("=====================");
        Android a = new Android();
        //a.info();
        System.out.println("=====================");
        Cyborg c = new Cyborg();
        //c.info();
        System.out.println("=====================");
    }

}

interface HumanBehaviour {
    default void info() {
        System.out.println("I am a person");
    }
}

interface MachineBehaviour {
    default void info() {
        System.out.println("I am a machine");
    }
}

class Person implements HumanBehaviour {
    public Person(){
        info();
    }
}

class Machine implements MachineBehaviour {
    public Machine(){
        info();
    }
}

class Android extends Machine implements HumanBehaviour {
    public void info() {
        super.info();
        HumanBehaviour.super.info();
        System.out.println("So, I am an android");
    }
}

class Cyborg extends Person implements MachineBehaviour {
    public void info() {
        super.info();
        MachineBehaviour.super.info();
        System.out.println("So, I am a cyborg");
    }
}

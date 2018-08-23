package inheritance.single;

public class App {

    public static void main(String[] args) {
        Person pe = new Person("Person1");
        Student st = new Student("Student1", 15);
        Professor pr = new Professor();
        pe.luckyNumber = 10;
        st.luckyNumber = 20;
        //pr.luckyNumber = 30;
        pe.info();
        st.info();
        pr.info();

        //pe.info2();//error: method private
        //st.info2();//error: method private
        pr.info2();
        GradStudent gs = new GradStudent("Student2", 12);
    }

}

package encapsulation.core;

public class Student extends Person {

	public Student(String name) {
		super(name);
		t = "student";
		luckyNumber = 1;
		luckyNumber2 = 2;
		//this.name = "other name";//cannot be accessed: private
	}

}

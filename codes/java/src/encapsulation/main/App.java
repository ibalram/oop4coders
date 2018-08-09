package encapsulation.main;

import encapsulation.core.*;

public class App {

	public static void main(String[] args) {
		Person p = new Person("Karim_p");
		Student s = new Student("Karim_s");
		p.luckyNumber = 5;
		//p.luckyNumber2 = 6;//error: package visibility
		//p.num = 6;//error: private
		//p.t = "admin"; //error: protected
		p.info();
		s.info();
	}

}

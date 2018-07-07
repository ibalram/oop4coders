public class Person {
	private String name;
	private int byear;

	public Person(String name, int byear){
		this.name = name;
		this.byear = byear;
	}

	public void info(){
		System.out.println("My name is: " + name);
		System.out.println("My birth year is: " + byear);
	}

	public static void main(String[] args) {
		Person p = new Person("Karim", 1986);
		p.info();
	}
}

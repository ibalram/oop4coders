public class Person {
	private String name;
	private int age;

	public Person(String name, int age){
		this.name = name;
		this.age = age;
	}

	public void info(){
		System.out.println("My name is: " + name);
		System.out.println("My age is: " + age);
	}

	public static void main(String[] args) {
		Person p = new Person("Karim", 31);
		p.info();
	}
}

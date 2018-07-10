public class ObjMeth {

	public static void main(String[] args) {
		Person2 p = new Person2("Karim", 1986);
		Person2 p2 = new Person2("Karim+1", 1986);

		System.out.println("As string: " + p);

		System.out.println("HashCode: " + p.hashCode());

		try {
			Person2 p3 = p.clone();
			System.out.println("Copy: " + p3);
			System.out.println("p == p3? " + (p==p3));
			System.out.println("p.equals(p3)? " + (p.equals(p3)));
			System.out.println("p.compareTo(p2)? " + (p.compareTo(p2)));
			System.out.println("p.compareTo(p3)? " + (p.compareTo(p3)));
		} catch (CloneNotSupportedException e) {}

	}

}

class Person2 implements Cloneable, Comparable<Person2> {

	private String name;
	private int byear;

	public Person2(String name, int byear){
		this.name = name;
		this.byear = byear;
	}

	@Override
	public String toString() {
		return "(" + name + ": " + byear + ")";
	}

	@Override
	public int hashCode() {
		return name.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (getClass() != obj.getClass()) return false;
		return name.equals(((Person2) obj).name);
	}

	public Person2 clone() throws CloneNotSupportedException {
		Person2 c = (Person2) super.clone();
		c.byear++;
		return c;
	}

	@Override
	public int compareTo(Person2 p2) {
		int cmp = byear - p2.byear;
		if (cmp == 0) cmp = name.compareTo(p2.name);
		return cmp;
	}

}

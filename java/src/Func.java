import java.util.Scanner;
public class Func {
	public static void main(String[] args) {
		System.out.print("Please enter an integer value: ");
		Scanner cs = new Scanner(System.in);
		int n = cs.nextInt();
		System.out.print("Fact(" + n + ")=");
		System.out.println(fact(n));
	}

	public static int fact(int i){
		if (i <=1)
			return 1;
		return i * fact(i-1);
	}
}
package hello;

public class Entry {
    public static void main(String[] args) {

        if (args.length < 1) {
            System.out.println("Please enter an integer value");
            System.exit(0);
        }

        int n = Integer.parseInt(args[0]);
        System.out.println("Fact(" + n + ")= " + fact(n));

    }

    public static int fact(int i) {
        if (i <=1)	return 1;
        return i * fact(i-1);
    }

}

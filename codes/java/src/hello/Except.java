package hello;

public class Except {

    public static void main(String[] args) {

        int n = 0;
        try {
            n = Integer.parseInt(args[0]);
        }
        catch (IndexOutOfBoundsException e) {
            System.out.println("Please enter an integer value");
            System.exit(0);
        }
        catch (NumberFormatException e) {
            System.out.println("The argument has to be an integer");
            System.exit(0);
        }

        try {
            int f = fact(n);
            System.out.println("Fact(" + n + ")= " + f);
        }
        catch (NegException | BigException e) {
            System.out.println(e.getMessage());
        }
        finally {
            System.out.println("That's all!!");
        }

    }

    public static int fact(int i) throws NegException, BigException {
        if (i < 0 ) throw new NegException();
        if (i > 5) throw new BigException();
        if (i ==0)	return 1;
        return i * fact(i-1);
    }

}

class NegException extends Exception {
    @Override
    public String getMessage() {
        return "Negative numbers don't have a factorial!";
    }
}

class BigException extends Exception {
    public String getMessage() {
        return "The number is too big!";
    }
}

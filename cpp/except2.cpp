#include <iostream>
#include <cstdlib>
#include <exception>

using namespace std;
struct NegException : public exception {
   const char * what () const throw () {
      return "Negative numbers don't have a factorial!";
   }
};

struct BigException : public exception {
   const char * what () const throw () {
      return "The number is too big!";
   }
};

int fact(int i){
  if (i < 0)
    throw NegException();
    if (i > 5)
      throw BigException();

	if (i ==1)
		return 1;
	return i * fact(i-1);
}

int main(int argc, char *argv[])
{

  if (argc < 2) {
    cout << "Please enter an integer value\n";
    exit(0);
  }

  int n = atoi(argv[1]);

  try {
    int f = fact(n);
    cout << "Fact(" << n << ")= " << f << "\n" ;
  }
  catch (exception& e) {
    cout << e.what() << "\n";
  }
}

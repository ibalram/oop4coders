#include <iostream>
#include <cstdlib>

int fact(int i){
  if (i < 0) throw "Negative numbers don't have a factorial!";
  if (i > 5) throw "The number is too big!";

  if (i ==0) return 1;
  return i * fact(i-1);
}

using namespace std;
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
  catch (const char* e) {
    cout << e << "\n";
  }
}

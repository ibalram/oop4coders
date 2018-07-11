#include <iostream>
#include <cstdlib>

int fact(int i);

using namespace std;
int main(int argc, char *argv[])
{

  if (argc < 2) {
    cout << "Please enter an integer value\n";
    return 1;
  }

  int n = atoi(argv[1]);
  cout << "Fact(" << n << ")= " << fact(n) << "\n" ;
}

int fact(int i){
  if (i <=0) return 1;
  return i * fact(i-1);
}

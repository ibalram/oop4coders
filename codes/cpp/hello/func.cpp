#include <iostream>
int fact(int i);
int main()
{
  int n;
  std::cout << "Please enter an integer value: ";
  std::cin >> n;
  std::cout << "Fact(" << n << ")= ";
  std::cout << fact(n) << "\n";
}

int fact(int i){
	if (i <=1)
		return 1;
	return i * fact(i-1);
}

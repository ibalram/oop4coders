#include "person.h"
#include "student.h"

int main()
{
	Person p = Person("Karim_p");
	Student s = Student("Karim_s");
	p.luckyNumber = 5;
	//p.num = 6;//error: private
	//p.t = "admin"; //error: protected
	p.info();
	s.info();
	return 0;
}

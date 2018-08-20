#include "person.h"
#include "student.h"
#include "frnd.h"

void info_fct(Person p) {
    std::cout << "Friend function- name: " << p.name << "\n";
    std::cout << "Friend function- job: " << p.t << "\n";
}

int main()
{
    Person p = Person("Karim_p");
    Student s = Student("Karim_s");
    p.luckyNumber = 5;
    //p.num = 6;//error: private
    //p.t = "admin"; //error: protected
    p.info();
    s.info();

    Frnd::info(p);
    info_fct(p);

    p.copy(s);

    p.info();

    return 0;
}

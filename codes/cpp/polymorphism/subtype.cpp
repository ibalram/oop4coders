#include <iostream>
#include <string>

class Person {
public:
    void talk(){
        std::cout << "I am a person" << std::endl;
    }
};

class Student: public Person {};

class Professor: public Person {};

void announce(std::string msg, Person p){
    std::cout << msg << ":";
    p.talk();
}

int main()
{
    Person pe; Student st; Professor pr;

    announce("Person", pe);
    announce("Student", st);
    announce("Professor", pr);

    std::cout << "Table of Person" << std::endl;
    Person people[] = {pe, st, pr};
    for (int i =0; i<3; ++i) { people[i].talk(); }

    return 0;
}

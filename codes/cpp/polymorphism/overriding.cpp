#include <iostream>
#include <string>

class Person {
public:
    void read(){ std::cout << "I am a reading" << std::endl; }
    void say(std::string text){ std::cout << "A text: " << text << std::endl; }
};

class Student: public Person {
public:
    void read(int nbr){ std::cout << "I read on table n°: " << nbr << std::endl; }
    
};

int main()
{
    Person pe;
    Student st;

    std::cout << "PERSON" << std::endl;
    pe.read();
    pe.read("I am a person");

    std::cout << "STUDENT" << std::endl;
    st.read(); // using Person::read; or error
    st.Person::read(); // Without using Person::read;
    st.read("I am a student"); // using Person::read; or error
    st.read(5);

    return 0;
}

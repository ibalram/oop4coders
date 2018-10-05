#include <iostream>
#include <string>
#include <typeinfo>    // for 'typeid'

class Person {
public:
    virtual void talk(){ std::cout << "I am a person" << std::endl; }
};

class Student: public Person {
public:
    void learn(){ std::cout << "I am learning" << std::endl; }
};

class Professor: public Person {
public:
    int nbr;
    Professor(){ nbr = 5; }
    void teach(){ std::cout << "I am teaching" << std::endl; }
};

class Machine {};

class Mooc: public Machine, public Professor {};

template<typename Class, typename T>
bool instanceof(const T *ptr) {
    return dynamic_cast<const Class*>(ptr) != 0;//nullptr with C++11
}

template<typename T>
struct HasLearnMethod
{
    typedef char Yes[1]; typedef char No[2];
    template <typename C> static Yes& test(typeof(&C::learn) ) ;
    template <typename C> static No& test(...);
    static const bool value = (sizeof(test<T>(0)) == sizeof(Yes)) ;
};

int main()
{
    Person pe; Student st; Professor pr; Mooc mooc;
    Person *pst = &st;
    Person *ppr = &pr;
    Person *pmooc = &mooc;
    Machine *mmooc = &mooc;

    std::cout << "==========================" << std::endl;
    std::cout << "Object type" << std::endl;
    std::cout << "==========================" << std::endl;
    std::cout << "typeid(pe): " << typeid(pe).name() << std::endl;
    std::cout << "typeid(pst): " << typeid(pst).name() << std::endl;
    std::cout << "typeid(*pst): " << typeid(*pst).name() << std::endl;
    std::cout << "typeid(ppr): " << typeid(ppr).name() << std::endl;
    std::cout << "typeid(*ppr): " << typeid(*ppr).name() << std::endl;
    std::cout << "typeid(pmooc): " << typeid(pmooc).name() << std::endl;
    std::cout << "typeid(*pmooc): " << typeid(*pmooc).name() << std::endl;
    std::cout << "typeid(mmooc): " << typeid(mmooc).name() << std::endl;
    std::cout << "typeid(*mmooc): " << typeid(*mmooc).name() << std::endl;

    std::cout << "==========================" << std::endl;
    std::cout << "Instance of" << std::endl;
    std::cout << "==========================" << std::endl;
    std::cout << "instanceof<Person>(pst): " <<  instanceof<Person>(pst) << std::endl;
    std::cout << "instanceof<Student>(pst): " <<  instanceof<Student>(pst) << std::endl;
    std::cout << "instanceof<Professor>(pst): " <<  instanceof<Professor>(pst) << std::endl;
    std::cout << "instanceof<Person>(ppr): " <<  instanceof<Person>(ppr) << std::endl;
    std::cout << "instanceof<Student>(ppr): " <<  instanceof<Student>(ppr) << std::endl;
    std::cout << "instanceof<Person>(pmooc): " <<  instanceof<Person>(pmooc) << std::endl;
    std::cout << "instanceof<Machine>(pmooc): " <<  instanceof<Machine>(pmooc) << std::endl;

    std::cout << "==========================" << std::endl;
    std::cout << "Member existance" << std::endl;
    std::cout << "==========================" << std::endl;
    std::cout << "Person.learn: " << HasLearnMethod<Person>::value << std::endl;
    std::cout << "Student.learn: " << HasLearnMethod<Student>::value << std::endl;
    std::cout << "Professor.learn: " << HasLearnMethod<Professor>::value << std::endl;
    std::cout << "Mooc.learn: " << HasLearnMethod<Professor>::value << std::endl;

    std::cout << "==========================" << std::endl;
    std::cout << "Casting" << std::endl;
    std::cout << "==========================" << std::endl;
    Student * st2 = static_cast<Student*> (pst);
    st2->learn();
    ((Student*) pst)->learn();
    Mooc * mooc2 = dynamic_cast<Mooc*>(pmooc);
    mooc2->teach();

    return 0;
}

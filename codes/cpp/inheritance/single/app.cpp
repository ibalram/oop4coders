#include "person.h"
#include "student.h"
#include "professor.h"

int main()
{
    Person pe = Person("person1");
    Student st = Student("student1", 15);
    Professor pr = Professor("professor1");
    pe.luckyNumber = 10;
    st.luckyNumber = 20;
    //st.Person.luckyNumber = 40;//can't access it like this
    //pr.luckyNumber = 30; //private

    pe.info();
    st.info();
    //pr.info(); //private
    //pe.notImplemented();//The function has to be implemented

    return 0;
}

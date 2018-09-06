#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def __init__(self, name):
        self.name = name
        print("Person")

    def info(self):
        print("my name: " + self.name)

class Student(Person):
    def __init__(self, name, mark):
        Person.__init__(self, name)
        self.mark = mark
        print("Student")

    def info(self):
        Person.info(self)
        print("my mark: " + str(self.mark))

class Professor(Person):
    def __init__(self, name, hours):
        Person.__init__(self, name)
        self.hours = hours
        print("Professor")

class PhdStudent(Student, Professor):
    def __init__(self, name, hours, mark):
        Professor.__init__(self, name, mark)
        Student.__init__(self, name + "-1", mark)
        print("PhdStudent")

a = Person("person1")
a.info()
print("=====================")
s = Student("student1", 15.5)
s.info()
print("=====================")
p = Professor("professor1", 8)
p.info()
print("=====================")
ps = PhdStudent("phdStudent1", 4, 12.5)
ps.info()
print("=====================")

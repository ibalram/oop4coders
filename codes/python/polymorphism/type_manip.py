#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def talk(self):
        print("I am a talking")

class Student(Person):
    def learn(self):
        print("I am learning")

class Professor(Person):
    def __init__(self):
        self.nbr = 5
    def teach(self):
        print("I am teaching")

class PhdStudent(Student, Professor): pass

pe = Person()
st = Student()
pr = Professor()
phd = PhdStudent()

print("==========================")
print("Object type")
print("==========================")
print("type(pe): " + type(pe).__name__)
print("st.__class__: " + st.__class__.__name__)
print("type(pr): " + type(pr).__name__)
print("type(phd): " + type(phd).__name__)
print("type(25): " + type(25).__name__)

print("==========================")
print("Instance of")
print("==========================")

print ("isinstance(pe, Person) " + str(isinstance(pe, Person)))
print ("isinstance(st, Person) " + str(isinstance(st, Person)))
print ("isinstance(25, Person) " + str(isinstance(25, Person)))
print ("isinstance(st, Student) " + str(isinstance(st, Student)))
print ("isinstance(st, Professor) " + str(isinstance(st, Professor)))
print ("isinstance(pr, Professor) " + str(isinstance(pr, Professor)))
print ("isinstance(phd, Professor) " + str(isinstance(phd, Professor)))
print ("isinstance(phd, Student) " + str(isinstance(phd, Student)))

print("==========================")
print("Member existance")
print("==========================")
import sys
def testMembers(msg, obj):
    sys.stdout.write(msg + ": ")
    learn = getattr(obj, "learn", None)
    if learn != None and callable(learn):
        learn()
    else:
        print("Method learn does not exist!")
    sys.stdout.write(msg + ": ")
    if hasattr(obj, "nbr"):
        print("Field nbr = " + str(obj.nbr))
    else:
        print("Field nbr does not exist!")

testMembers("Person", pe)
testMembers("Student", st)
testMembers("Professor", pr)
testMembers("PhdStudent", phd)
testMembers("a number", 25)

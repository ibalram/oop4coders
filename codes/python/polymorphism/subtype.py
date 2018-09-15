#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def talk(self):
        print("I am a person")

class Student(Person): pass

class Professor(Person): pass

class Robot(object):
    def talk(self):
        print("I am a robot")

import sys
def announce(msg, talker):
    sys.stdout.write(msg + ": ")
    talk = getattr(talker, "talk", None)
    if talk != None and callable(talk):
        talk()
    else:
        print("Sorry! I do not talk!")

pe = Person()
st = Student()
pr = Professor()
ro = Robot()

announce("Person", pe)
announce("Student", st)
announce("Professor", pr)
announce("Robot", ro)
announce("a number", 25)

print ("A table with different types")
elements = [pe, st, pr, ro, 25]
for i, element in enumerate(elements):
    try:
        element.talk()
    except Exception:
    	print("The element n°" + str(i) + " does not talk()")

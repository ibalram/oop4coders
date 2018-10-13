#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def read(self, text=None):
        if text == None:
            print("I am reading")
        elif type(text) is str:
            print("A text: " + text)

class Student(Person):
    def read(self, *args):
        if len(args) == 0:
            Person.read(self)
        elif len(args) == 1:
            Person.read(self, args[0])
        else:
            print("I am reading: " + str(args[0]) + " for " + str(args[1]) + " times")

print("PERSON")
pe = Person()
pe.read()
pe.read("I am a person")

print("STUDENT")
st = Student()
st.read()
st.read("I am a student")
st.read("a book", 5)

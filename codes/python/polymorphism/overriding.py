#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def talk(self):
        print("I am a person")

class Student(Person):
    def talk(self):
        print("I am a student")

pe = Person()
st = Student()
pe.talk() # I am a person
st.talk() # I am a student

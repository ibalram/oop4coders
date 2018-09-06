#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def __init__(self):
        print("I am a person")

class Machine(object):
    def __init__(self):
        print("I am a machine")

class Android(Machine, Person):
    def __init__(self):
        Machine.__init__(self)
        Person.__init__(self)
        print("So, I am an android")

class Cyborg(Person, Machine):
    def __init__(self):
        Person.__init__(self)
        Machine.__init__(self)
        print("I am a cyborg")


p = Person()
print("=====================")
m = Machine()
print("=====================")
a = Android()
print("=====================")
c = Cyborg()
print("=====================")

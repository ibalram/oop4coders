#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
    def __init__(self, name):
        self.name = name
        self.serial = 5

    def info(self):
        print("Person name: " + self.name)
        print("Person serial number: " + str(self.serial))

class Machine(object):
    def __init__(self, serial):
        self.serial = serial

    def info(self):
        print("Machine serial number: " + str(self.serial))

class Android(Machine, Person):
    def __init__(self, name, serial):
        Person.__init__(self, name)
        Machine.__init__(self, serial)

class Cyborg(Person, Machine):
    def __init__(self, name, serial):
        Machine.__init__(self, serial)
        Person.__init__(self, name)


p = Person("person1")
p.info()
print("=====================")
m = Machine(17)
m.info()
print("=====================")
a = Android("android1", 21)
a.info()
print("=====================")
c = Cyborg("cyborg1", 27)
c.info()
print("=====================")

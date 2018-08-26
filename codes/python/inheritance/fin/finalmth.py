#!/usr/bin/env python
# -*- coding: utf-8 -*-
# https://stackoverflow.com/a/321334

def final(f):
    f.final = True
    return f

class FinalMethods(type):
    def __new__(cls, name, bases, dct):
        finals = get_finals(bases)
        for name in dct:
            if name in finals:
                raise Exception ("You can not override %s, it is final" % name)
        return type.__new__(cls, name, bases, dct)

def get_finals(bases):
    ret = []
    for source in bases:
        for name, attr in source.__dict__.items():
            if getattr(attr, "final", False):
                ret.append(name)
        ret.extend(get_finals(source.__bases__))
    return ret

# class Person(metaclass=FinalMethods): #Python 3
class Person(object):
    __metaclass__ = FinalMethods

    def method(self):
        print("Person method")

    @final
    def final_method(self):
        print("Person final method")

class Student(Person):
    def method(self):
        print("Student method")

    #def final_method(self):
    #    print("Student final method")

pe = Person()
st = Student()

pe.method()
st.method()

pe.final_method()
st.final_method()

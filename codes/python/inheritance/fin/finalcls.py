#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Final(type):
    def __new__(cls, name, bases, classdict):
        for b in bases:
            if isinstance(b, Final):
                raise TypeError("'{0}' is final class".format(b.__name__))
        return type.__new__(cls, name, bases, dict(classdict))

# class Person(metaclass=Final): pass #Python 3
class Person(object):
    __metaclass__ = Final

#class Student(Person): pass # error: final

pe = Person()

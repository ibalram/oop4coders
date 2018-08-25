#!/usr/bin/env python
# -*- coding: utf-8 -*-

from abc import ABCMeta, abstractmethod

class Person(object):
    __metaclass__ = ABCMeta

    def info(self):
        print("====INFO====")
        self.info2()

    @abstractmethod
    def info2(self):
        pass

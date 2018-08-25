#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):

	def __init__(self, name):
		self.name = name

	def info(self):
		print("My name: " + self.name)

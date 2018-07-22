#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Rectangle(object):

	def __init__(self):
		self.width = 0
		self.height = 0

	def info(self):
		print("Width: " + str(self.width) + ", Height: " + str(self.height))

	@property
	def w(self):
		return self.width + 2

	@property
	def h(self):
		return self.height + 1

	@w.setter
	def w(self, value):
		if value < self.width :
			self.height = value
		else :
			self.height = self.width
			self.width = value

r = Rectangle();
r.w = 50;
r.w = 20;
r.info();
print("w: " + str(r.w) + ", h: " + str(r.h));

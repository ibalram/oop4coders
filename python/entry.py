#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

def main():
	if len(sys.argv) < 2:
		print("Please enter an integer value")
		sys.exit()

	n = int(sys.argv[1])
	print("Fact(" + str(n) + ")= " + str(fact(n)))
	print sys.argv[0]

def fact(i):
	if i <= 0:
		return 1
	return i * fact(i-1)

if __name__ == "__main__":
	main()

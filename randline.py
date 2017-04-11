import random
import sys

def random_line(afile):
	line = next(afile)
	for num, aline in enumerate(afile):
		if random.randrange(num + 2): continue
		line = aline
	return line

f = open('stoney.oblique.txt', 'r')
print random_line(f).rstrip();

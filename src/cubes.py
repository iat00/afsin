#!/usr/bin/python

cubes=[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,71,73]

i=1
for cube in cubes:
    cubes[i-1]=cube*cube
    i=i+1

print cubes

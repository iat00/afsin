#!/usr/bin/python

import sys
import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.connect((sys.argv[1], int(sys.argv[2])))

answer = s.recv(1024)
print answer

s.close

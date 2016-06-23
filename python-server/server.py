'''
 |_| |__ (_)_ __ | |__   __ _ _ __ | | __
| __| '_ \| | '_ \| '_ \ / _` | '_ \| |/ /
| |_| | | | | | | | |_) | (_| | | | |   <
 \__|_| |_|_|_| |_|_.__/ \__,_|_| |_|_|\_\

'''

import socket
import sys
import io
import ramdom
from thread import *

HOST = ''   # Symbolic name meaning all available interfaces
PORT = 8888 # Arbitrary non-privileged port

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
print """
|_| |__ (_)_ __ | |__   __ _ _ __ | | __
| __| '_ \| | '_ \| '_ \ / _` | '_ \| |/ /
| |_| | | | | | | | |_) | (_| | | | |   <
\__|_| |_|_|_| |_|_.__/ \__,_|_| |_|_|\_\

===========================================
A WSO2 Legacy Example Bank

Socket Server Ready for Connections

"""


#Bind socket to local host and port
try:
    s.bind((HOST, PORT))
except socket.error as msg:
    print 'Bind failed. Error Code : ' + str(msg[0]) + ' Message ' + msg[1]
    sys.exit()

print 'Socket bind complete'

#Start listening on socket
s.listen(10)
print 'Socket now listening'

#Function for handling connections. This will be used to create threads
def clientthread(conn):
    #Sending message to connected client
    conn.send('Welcome to the server. Type something and hit enter\n') #send only takes string

    #infinite loop so that function do not terminate and thread do not end.
    while True:

        #Receiving from client
        data = conn.recv(1024)
        print 'Receiving data: ' + data
        reply = 'Processing Information: ' + data
        with io.FileIO("transaction.txt", "a") as file:
            file.write(data)
        if not data:
            break

        conn.sendall(reply)

    #came out of loop
    conn.close()

#now keep talking with the client
while 1:
    #wait to accept a connection - blocking call
    conn, addr = s.accept()
    print 'Connected Client with ' + addr[0] + ':' + str(addr[1])

    #start new thread takes 1st argument as a function name to be run, second is the tuple of arguments to the function.
    start_new_thread(clientthread ,(conn,))

s.close()

# Socket Server [Python]

This project aims to simulate a bank transaction receiving data over the TCP Socket port and writing it in a file or a bunch of files.

## How it works?

First of all, you need python installed into your server.

So, execute the command line:

```
python server.py
```
Server running will show this in console: 

```
|_| |__ (_)_ __ | |__   __ _ _ __ | | __
| __| '_ \| | '_ \| '_ \ / _` | '_ \| |/ /
| |_| | | | | | | | |_) | (_| | | | |   <
\__|_| |_|_|_| |_|_.__/ \__,_|_| |_|_|\_
===========================================
A WSO2 Legacy Example Bank

Socket Server Ready for Connections


Socket bind complete
Socket now listening
```

It will bootstrap the Socket server.

Later on, please, go to other console terminal window or tab and connect to that socket via Telnet, check which port you are exposing in the Python Server:

```
telnet localhost 8888
```

Send that transaction via that Socket Telnet:
```
credit,120,1234,cash
```

or
```
debit,40,1234,withdrawn
```

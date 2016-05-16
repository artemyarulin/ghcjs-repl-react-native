# ghcjs-repl-react-native
Experiment of bringing ghcjs REPL to React Native. Bring such repl to React Native environment:

![ghcjsi1.png](http://hdiff.luite.com/tmp/ghcjsi1.png)

# Plan

ghcjs has a REPL already, it contains of two parts: 

- Server side which opens a socket and waits until client connects to that
- Client side [ghcjsiClient.js](https://github.com/ghcjs/ghcjs/blob/7aa7bae05b306bdb8f7a9c6e292ce74736e4541d/lib/etc/ghcjsiClient.js) which using socket.io library just connects to the open websocket.

RN environment has it's own websocket client implementation and we should use it, rather that bringing socket.io. 

We are going to follow the same approach like in [ktoa](https://github.com/artemyarulin/ktoa), meaning building a REPL app first which takes care about connecting RN environment to our server socket, and then (re)evaluating real app code





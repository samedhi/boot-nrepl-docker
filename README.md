# boot-nrepl-docker

A bit of code that demonstrates running the boot Clojure REPL from within docker.

# Usage

```
$ git clone https://github.com/samedhi/boot-nrepl-docker
$ cd boot-nrepl-docker
$ docker build -t boot-nrepl-docker:0.1 .
$ docker run -it --rm -p 6800:6800 boot-nrepl-docker:0.1
```

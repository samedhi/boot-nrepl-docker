FROM gcr.io/google_appengine/openjdk8
EXPOSE 6800
RUN apt-get update
RUN apt-get install curl -y
RUN cd /usr/local/bin && curl -fsSLo boot https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && chmod 755 boot
WORKDIR /app
ADD boot.properties boot.properties
ADD build.boot build.boot
ADD src src
ENV BOOT_AS_ROOT yes
RUN boot deps
CMD ["boot", "repl"]

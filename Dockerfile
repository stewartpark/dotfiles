FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y python-dev build-essential git-core gnupg-agent pinentry-curses vim-nox cmake
WORKDIR /app
ADD . /app
CMD ["make", "install"]

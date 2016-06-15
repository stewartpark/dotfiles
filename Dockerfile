FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y build-essential git-core gnupg-agent pinentry-curses vim-nox cmake curl sudo libssl-dev zlib1g-dev libbz2-dev
RUN useradd -ms /bin/bash testuser
RUN adduser testuser sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
WORKDIR /home/testuser/dotfiles
RUN chown testuser -R /home/testuser
USER testuser
ADD . /home/testuser/dotfiles
CMD ["make", "install"]

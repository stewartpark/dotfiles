FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y build-essential zsh python-dev python-pip git-core gnupg-agent pinentry-curses vim-nox cmake curl sudo libssl-dev zlib1g-dev libbz2-dev keychain tmux psutils net-tools emacs libsqlite3-dev libreadline-dev stumpwm fcitx

RUN useradd -ms /bin/bash testuser && adduser testuser sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/testuser/dotfiles
ENV HOME /home/testuser
RUN chown testuser:testuser -R /home/testuser
USER testuser
ADD . /home/testuser/dotfiles
CMD ["make", "install"]

FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y build-essential zsh python3-dev python3-pip git-core gnupg-agent pinentry-curses vim-nox cmake curl sudo libssl-dev zlib1g-dev libbz2-dev keychain tmux psutils net-tools emacs libsqlite3-dev libreadline-dev

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10

RUN useradd -ms /bin/zsh testuser && adduser testuser sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/testuser/dotfiles
ENV HOME /home/testuser
ENV SHELL /bin/zsh
ENV TERM dumb
USER testuser
COPY . /home/testuser/dotfiles
RUN sudo chown testuser:testuser -R /home/testuser
CMD ["make", "install"]

FROM fedora:latest
RUN dnf install -y automake gcc gcc-c++ kernel-devel zsh python-devel python-pip git-core gnupg pinentry-curses cmake curl sudo openssl-devel zlib-devel bzip2-devel keychain tmux psutils net-tools sqlite-devel readline-devel

RUN useradd -ms /bin/zsh testuser && gpasswd -a testuser wheel && echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/testuser/dotfiles
ENV HOME /home/testuser
ENV SHELL /bin/zsh
ENV TERM dumb
USER testuser
COPY . /home/testuser/dotfiles
RUN sudo chown testuser:testuser -R /home/testuser
CMD ["make", "install"]

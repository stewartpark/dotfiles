if [[ "`uname`" == "Linux" ]]; then
    alias ls='ls --color=always'
else
    alias ls='ls -G'
fi;

alias tor-ssh='ssh -o "ProxyCommand nc -x 127.0.0.1:9050 %h %p"'
alias tor-sftp='sftp -o "ProxyCommand nc -x 127.0.0.1:9050 %h %p"'
alias vi='vim'

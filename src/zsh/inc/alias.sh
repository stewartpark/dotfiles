if [[ "`uname`" == "Linux" ]]; then
    alias ls='ls --color=always'
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
else
    alias ls='gls --color=always'
fi;

alias tor-ssh='ssh -o "ProxyCommand nc -x 127.0.0.1:9050 %h %p"'
alias tor-sftp='sftp -o "ProxyCommand nc -x 127.0.0.1:9050 %h %p"'
alias vi='vim'
alias em='emacsclient -n'
alias k='kubectl'

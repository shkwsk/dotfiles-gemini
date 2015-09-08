#/bin/sh
# /bin/zshがあれば起動する
if [[ -s /bin/zsh ]] ; then
    exec /bin/zsh
else
    if [[ -s ~/.bashrc ]] ; then    . ~/.bashrc
    fi
fi

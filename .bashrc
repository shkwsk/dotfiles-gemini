export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
eval "`dircolors -b ~/.dir_colors`"

# shell 色設定
source ~/dotfiles/git-prompt.sh
source ~/dotfiles/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[0;32m\]\u@\h\[\033[1;00m\]:\[\033[0;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[1;00m\]\$ '

# rmのゴミ箱設定
alias rm='~/bin/rm.sh'
alias mv='mv -i'

# control + d でログアウト禁止
export IGNOREEOF=10


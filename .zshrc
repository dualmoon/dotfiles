unsetopt BG_NICE
cd ~

source ~/.profile
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/adavis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme af-magic

antigen apply

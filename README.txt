Initial setup:

git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
# or add this to .zshrc
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
Then to add stuff, we can do:

config add .zshrc
config commit -m 'added zshrc'
config remote set-url origin git@github.com:altosaar/dotfiles.git
config push
On a new computer:

# locally
ssh-copy-id user@host
# install zsh and other things
sudo apt-get install zsh autojump keychain
# brew install zsh-syntax-highlighting
# set git variables
git config --global user.email blah
git config --global user.name "Jaan Altosaar"
# generate a new key, add `cat ~/.ssh/id_rsa.pub` to https://github.com/settings/ssh and https://bitbucket.org/account/user/thejaan/ssh-keys/
ssh-keygen -t rsa -b 4096 -C "your_email@example"
# make zsh default, install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# may need to logout
exit
# locally
ssh -O exit user@host
# login again; shell should change
# clone the repo
git clone --bare git@github.com:altosaar/dotfiles.git $HOME/.cfg
# add to zshrc or bashrc
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# add to gitignore
echo ".cfg" >> .gitignore
config checkout
config config --local status.showUntrackedFiles no
# IMPORTANT: this pulls the latest plugins we are using, see below
config submodule update --init
source ~/.zshrc
# update & upgrade
sudo apt-get update
sudo apt-get upgrade


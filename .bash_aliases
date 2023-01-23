export PATH=$PATH:$HOME/local/bin
export INCLUDE_PATH=$LD_LIBRARY_PATH:$HOME/local/include
export LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib
export EDITOR=vim

current-branch() { git symbolic-ref --short HEAD; }

# start ssh agent
/usr/bin/keychain -q --nogui ~/.ssh/keys/*
source ~/.keychain/$HOSTNAME-sh

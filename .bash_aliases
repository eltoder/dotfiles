prepend_path() {
    if [[ "${!1}" != *"$2"* ]]; then
        eval "export $1=\$2\${$1+:\${$1}}"
    fi
}

prepend_path PATH $HOME/.local/bin
prepend_path INCLUDE_PATH $HOME/.local/include
prepend_path LIBRARY_PATH $HOME/.local/lib
prepend_path LD_LIBRARY_PATH $HOME/.local/lib
# pdm
prepend_path PYTHONPATH $HOME/.local/share/pdm/venv/lib/python3.10/site-packages/pdm/pep582

export EDITOR=vim
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

alias ipy='python -m IPython'
alias py=python
alias tm='tmux new -ADs'

current-branch() { git symbolic-ref --short HEAD; }

new-branch() { git checkout -b "$1" main; }

push-review() {
    local -r branch=$(current-branch)
    if [[ $branch == +(master|main) ]]; then
        echo "cannot push review on $branch; make a feature branch"
        return 1
    fi
    git push --set-upstream origin $branch
}

# start ssh agent
/usr/bin/keychain -q --nogui ~/.ssh/keys/*
source ~/.keychain/$HOSTNAME-sh

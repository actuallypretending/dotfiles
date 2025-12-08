# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
. "$HOME/.cargo/env"

export PATH="$HOME/tools/flutter/bin:$PATH"
export PATH
export EDITOR=nvim

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias rebash='source ~/.bashrc'

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519personal
fi


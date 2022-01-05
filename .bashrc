# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# export PS1="\u@\W\[$(tput sgr0)\]"
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

if [[ -x "$(command -v vimx)" ]]; then alias vim='vimx'; fi

alias make='make -j8'
alias doom='~/.emacs.d/bin/doom'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mmenzyns/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mmenzyns/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mmenzyns/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mmenzyns/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

. "$HOME/.cargo/env"

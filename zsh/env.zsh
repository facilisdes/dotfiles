# Setting and editing of env variables.

# Vars
export EDITOR='vim'
export SUDO_EDITOR='vim'

#set history size
export HISTSIZE=250
#save history after logout
export SAVEHIST=250
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY   

export LANG="en_US.UTF-8"

export PATH="$HOME/.composer/vendor/bin:$HOME/.rbenv/bin:$HOME/node_modules/.bin:$HOME/.rbenv/shims:$HOME/.composer/vendor/bin:$PATH"

eval "$(rbenv init -)"

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<



# python PATH variable
alias python=/usr/bin/python3
alias pip=/usr/bin/pip3
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=/usr/local/sbin:/usr/local/bin:$PATH


# miniconda init from 'brew install miniconda'
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
#


# take conda off base by defualt to ensure $PATH
#
# conda config --set auto_activate_base false
#
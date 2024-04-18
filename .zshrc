

# Path to your oh-my-zsh terminal installation.
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export MYVIMRC="$HOME/.vimrc"

export LS_COLORS='di=01;34:ln=01;36:so=01;35:pi=40;33:ex=01;32:bd=40;33;01:cd=40;33;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:*.tar=01;31:*.gz=01;31:*.zip=01;31:*.rar=01;31'

# add a secrets file to environment that isnt tracked in dotfile repo
if [[ ! -f ~/.zshrc_secrets ]]; then
    touch ~/.zshrc_secrets
fi

# Source .zshrc_secrets if it exists
if [[ -f ~/.zshrc_secrets ]]; then
    source ~/.zshrc_secrets
fi

# starship prompt
# https://starship.rs/
eval "$(starship init zsh)"
# install font and configure in terminal settings
# brew cask install font-hack-nerd-font

export STARSHIP_CONFIG=~/.starship.toml 
# starship preset tokyo-night -o ~/.config/starship.toml


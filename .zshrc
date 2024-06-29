# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias pip="pip3"
alias diff="colordiff"
alias vim="nvim"
alias k="kubectl"
alias kb="kubebuilder"
alias tf="terraform"
alias zconf="nvim ~/.zshrc"
alias glint="golangci-lint"
alias vimconf="cd ~/.config/nvim && vim ."
alias vimkeys="vim ~/.config/nvim/lua/tostieme/remap.lua"

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/conf.json)"

# Github CLI
function ghs() {
  gh repo sync stiemtobi/$1;
};

export NVIM_TUI_ENABLE_TRUE_COLOR=1
export PATH=/usr/bin/python3:$PATH
export PATH=/opt/homebrew/bin/pylsp:$PATH
export PATH="/Users/tostieme/.pyenv/shims:${PATH}"
eval "$(pyenv init --path)"
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0

export EDITOR=nvim

# Go Stuff
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

# fzf
eval "$(fzf --zsh)"


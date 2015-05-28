# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme gnuykeaj

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins tmux rbenv pbcopy

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

if status --is-login
  set PATH $PATH /usr/local/bin /usr/bin /bin $HOME/bin $HOME/.rbenv/bin
  set PATH $PATH $HOME/.pyenv
  set GOPATH $HOME/go
  set PATH $PATH $GOPATH/bin
end

# Aliases
alias brewup="brew update; brew cask update; brew upgrade --all; brew cleanup; brew cask cleanup"

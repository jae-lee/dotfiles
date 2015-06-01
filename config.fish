# Remove fish default greeting
set --erase fish_greeting

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

Theme "gnuykeaj"

Plugin "tmux"
Plugin "localhost"

if status --is-login
  set PATH $PATH /usr/local/bin /usr/bin /bin $HOME/bin $HOME/.rbenv/bin
  set PATH $PATH $HOME/.pyenv
  set GOPATH $HOME/go
  set PATH $PATH $GOPATH/bin
end

# Aliases
alias brewup="brew update; brew cask update; brew upgrade --all; brew cleanup; brew cask cleanup"

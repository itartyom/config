if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH
set -x PATH $PATH \
    /usr/local/bin \

alias ssh 'kitty +kitten ssh'
alias fish-reload 'source ~/.config/fish/config.fish'

set -g __autoenv_init_pwd "" && __autoenv


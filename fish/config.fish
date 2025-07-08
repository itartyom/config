if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH
set -x PATH $PATH \
    /usr/local/bin \

alias ssh 'kitty +kitten ssh'
alias fish-reload 'source ~/.config/fish/config.fish'

set -g __autoenv_init_pwd "" && __autoenv


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

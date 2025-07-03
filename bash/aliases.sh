alias salias='nvim ~/.config/bash/aliases.sh'

alias edserv='sudo ranger /etc/systemd/system'
alias ednginx='sudo ranger /etc/nginx'

alias lg='lazygit'
alias gp='git pull'

alias dc='docker compose'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dcl='docker compose logs'

alias sc='sudo systemctl'
alias scs='sc status'

alias jc='sudo journalctl'

alias config='ranger ~/.config'
alias loadenv='set -o allexport; [ -f .env ] && source .env; set +o allexport'
alias ht='history | tail'

alias q='exit'


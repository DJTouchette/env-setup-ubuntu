export ZSH="/home/ubuntu/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Ticket number with name (will g-sub spaces)
checkout_new_branch() {
        ticket_num=$1
        name=$2
        parsed_name="${name// /-}"

        echo "Checking out: feature/$ticket_num-$parsed_name"
        git co -b "feature/$ticket_num-$parsed_name"
}

# Aliases

# Vim
alias v="nvim"

# Git
alias g_recent="git for-each-ref --sort=-committerdate --count=10 --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' refs/heads/"
alias g_latest="git branch --sort=-committerdate"
alias g_add="rm -rf tags && rm -rf tags.lock && rm -rf tags.temp && git add -u"
alias g_commit="git commit -m $1"
alias g_push="rm -rf tags && rm -rf tags.lock && rm -rf tags.temp && git add . && git commit -m $1 && git push"
alias g_co="git co -b $1"
alias g_new_branch="checkout_new_branch"

# Docker 
alias d="docker"
alias dc="docker-compose"
alias d_ssh="docker exec -it $1 bash"
alias d_sh="docker exec -it $1 sh"

alias k="kubectl"

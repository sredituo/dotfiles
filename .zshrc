HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

PATH="$PATH:/opt/nvim/:$HOME/bin"

# alias
alias v='nvim'
alias l='ls -la --color=auto'
alias k='kubectl'

# Prompt
left-prompt(){
    local current_dir="%K{238}%F{45} 📂 %~ %k%f"
    local time="%K{238}%F{38}| %*%k%f"
    local right_edge="%F{238}\uE0B0%f"
    local cmd_arrow="%F{47}❯%f"
    echo -e "\n${current_dir}${time}${right_edge}\n${cmd_arrow} "
}

PROMPT=`left-prompt`
unset -f left-prompt

if [[ -z "$TMUX" && -z "$VIM" && "$TERM_PROGRAM" != "vscode" && $- == *l* ]] ; then
  tmux attach-session -t default || tmux new-session -s default
fi

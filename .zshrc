alias vim='vim -u /Users/graz/dot_macos/.vimrc'
alias screen='screen -c /Users/graz/dot_macos/.screenrc'
alias tmux='tmux -f /Users/graz/dot_macos/.tmux.conf'
alias python='python3'
alias pip='pip3'
alias pip_update_all='pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U'

alias coact='conda activate'
alias codea='conda deactivate'
alias jupy='jupyter lab'
alias ghc='ghc-9.0.1'
alias ghci='ghci-9.0.1'

alias ll='ll'
alias ls='ls -Gh'
alias la='ls -la'

export PS1='%n %F{1}::%f %F{2}%~%f %F{1}%(?..%? )%f%F{4}'$'\U00BB''%f '
export EDITOR='vim'
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/graz/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/graz/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/graz/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/graz/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>  ghcip set up 
[ -f "/Users/graz/.ghcup/env" ] && source "/Users/graz/.ghcup/env" # ghcup-env

# this function creates a repo on my github
function mkrepo(){
    curl -H "Authorization: token $GITTOKEN" --data '{"name":"'"$2"'"}' https://api.github.com/user/repos
}

export EDITOR="vim"
export AWS_PROFILE="work"

# I've gone off tmux again...
#if [[ "$TERM_PROGRAM" != "vscode"  ]]; then
#  if [ -z "$TMUX"  ]; then
#      exec /opt/homebrew/bin/tmux new-session -A -s workspace
#  fi
#fi

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add brew to PATH
PATH="/opt/homebrew/bin:$PATH"

# Add openjdk@17 to PATH
PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
PATH="/opt/homebrew/opt/mysql-client@5.7/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.local/opt/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

# User powerlevel10k theme: https://github.com/romkatv/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$ZDOTDIR/custom/.p10k.zsh" ]] || source "$ZDOTDIR/custom/.p10k.zsh"

# ALIASES

# zsh
alias ez="$EDITOR $ZDOTDIR/.zshrc"
alias sz="source $ZDOTDIR/.zshrc"

# utils
alias la="ls -lah"

# git
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpu="git pull"

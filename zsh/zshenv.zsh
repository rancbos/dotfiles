# Modify the default text editor
export EDITOR=nvim 
export VISUAL=nvim



##########
## Theme
##########

source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi




##########
## fzf
##########

export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.sass-cache,node_modules,build} --type f"
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
#export FZF_TMUX=1
#export FZF_TMUX_HEIGHT='80%'
#fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'

##########
## Ranger
##########

# Ranger shell prompt indicator
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

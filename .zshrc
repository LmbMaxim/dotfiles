# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
setopt autocd nomatch notify
unsetopt beep extendedglob

bindkey -v
bindkey -M vicmd '^]' undefined-key
bindkey "^?" backward-delete-char

export KEYTIMEOUT=1


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/maxim/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


alias sba='source bin/activate'
alias sbd='deactivate'
alias mpy='./manage.py'
alias vim='nvim'
alias top='htop'
alias ls='ls -a'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



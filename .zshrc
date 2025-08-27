# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



bindkey -v
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/skate/.dart-cli-completion/zsh-config.zsh ]] && . /home/skate/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


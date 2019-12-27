. ~/.zsh_aliases
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=~/.histfile
HISTSIZE=1000000000
SAVEHIST=1000000000

setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep

bindkey -e

autoload -Uz compinit up-line-or-beginning-search down-line-or-beginning-search

compinit

zstyle ':completion:*' menu select

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

powerline-daemon -q
. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh



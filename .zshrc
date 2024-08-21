if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alejandrojimenez/.oh-my-zsh"

# Adding ytop
export PATH="$PATH:/home/alejandrojimenez/.cargo/bin"
export PATH="$PATH:/home/alejandrojimenez/.local/share/gem/ruby/3.0.0/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

# aliases
#
alias zshconfig="nvim ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/alejandrojimenez/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/alejandrojimenez/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/alejandrojimenez/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/alejandrojimenez/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/alejandrojimenez/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/alejandrojimenez/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/alejandrojimenez/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels
if [ -e /home/alejandrojimenez/.nix-profile/etc/profile.d/nix.sh ]; then . /home/alejandrojimenez/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

QT_STYLE_OVERRIDE=""

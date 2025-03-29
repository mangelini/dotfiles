# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Enable colors and change prompt
autoload -U colors && colors

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt EXTENDED_HISTORY       # Save timestamp and duration of commands
setopt INC_APPEND_HISTORY     # Append commands to HISTFILE immediately
setopt SHARE_HISTORY          # Share history between all sessions
setopt HIST_IGNORE_DUPS       # Ignore duplicate commands
setopt HIST_IGNORE_ALL_DUPS   # Remove older duplicate commands
setopt HIST_FIND_NO_DUPS      # Do not display duplicates when searching history
setopt HIST_IGNORE_SPACE      # Ignore commands starting with a space
setopt HIST_SAVE_NO_DUPS      # Do not save duplicate commands to HISTFILE
setopt HIST_VERIFY            # Show commands before executing them
setopt APPEND_HISTORY         # Append to HISTFILE instead of overwriting

# Basic auto/tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

# Enable zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# Enable zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Keybindings for autosuggestions
bindkey '^ ' autosuggest-accept

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias dots='~/scripts/dotfiles.sh'
alias g='git'
alias ga='git add'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gl='git log --oneline --graph --decorate'

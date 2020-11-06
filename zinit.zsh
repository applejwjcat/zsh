### Added by Zinit's installer
if [[ ! -f $HOME/.config/zsh/zinit/bin/zinit.zsh ]]; then
	print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
	command mkdir -p "$HOME/.config/zsh/zinit" && command chmod g-rwX "$HOME/.config/zsh/zinit"
	command git clone https://github.com/zdharma/zinit "$HOME/.config/zsh/zinit/bin" && \
		print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
		print -P "%F{160}▓▒░ The clone has failed.%f"
fi
typeset -A ZINIT=(
    BIN_DIR         $ZDOTDIR/zinit/bin
    HOME_DIR        $ZDOTDIR/zinit
    COMPINIT_OPTS   -C
)

source $ZDOTDIR/zinit/bin/zinit.zsh
source $ZDOTDIR/.alias.zsh


autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# if [ -z "$TMUX" ]
# then
    # tmux attach -t work || tmux new -s work
# fi

zinit ice depth=1 atload"!source $ZDOTDIR/.p10k.zsh" lucid nocd
zinit light romkatv/powerlevel10k
# Oh-my-zsh plugins
zinit snippet OMZ::lib/history.zsh

zinit snippet OMZ::lib/key-bindings.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/completion.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/grep.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/theme-and-appearance.zsh

zinit ice wait lucid atload"unalias grv"
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/git.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/correction.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/diagnostics.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/directories.zsh

zinit ice wait lucid
zinit snippet OMZ::lib/functions.zsh

# zinit ice wait lucid
# zinit snippet OMZ::lib/bzr.zsh
# 
# zinit ice wait lucid
# zinit snippet OMZ::lib/cli.zsh
#
# zinit ice wait lucid
# zinit snippet OMZ::lib/clipboard.zsh
# 
# zinit ice wait lucid
# zinit snippet OMZ::lib/spectrum.zsh
# 
# zinit ice wait lucid
# zinit snippet OMZ::lib/nvm.zsh
# 
# zinit ice wait lucid
# zinit snippet OMZ::lib/prompt_info_functions.zsh
# 
# zinit ice wait lucid
# zinit snippet OMZ::lib/misc.zsh
# 
# zinit ice wait lucid
# zinit snippet OMZ::lib/compfix.zsh
#
# zinit ice wait lucid
# zinit snippet OMZ::lib/termsupport.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/colorize/colorize.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/systemd/systemd.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/extract/extract.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/systemadmin/systemadmin.plugin.zsh

zinit ice wait lucid
zinit snippet OMZ::plugins/autojump/autojump.plugin.zsh

#plugins
zinit ice depth=1 wait blockf lucid atpull"zinit creinstall -q ."
zinit light clarketm/zsh-completions

zinit ice depth=1 wait lucid atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

zinit ice depth=1 wait lucid compile"{src/*.zsh,src/strategies/*.zsh}" atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions


zinit ice depth=1 wait"2" lucid
zinit light hlissner/zsh-autopair

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

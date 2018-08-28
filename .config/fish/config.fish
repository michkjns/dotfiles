
alias vim='nvim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias i3config='vim ~/.config/i3/config'
alias vimrc='vim ~/.config/nvim/init.vim'
alias weather='bash  -c "curl wttr.in/Eindhoven?0"'
alias note='vim ~/Documents/Notes/check.md'
alias shutdown='sudo systemctl poweroff'
alias suspend='sudo systemctl suspend'

export EDITOR=nvim
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$GOBIN"

function mkcd
	mkdir $argv; and cd $argv
end

function mkmv
	set dir $argv[1]
	mkdir $dir; and mv $argv[2] $dir
end

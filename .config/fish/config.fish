alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias vimrc='vim ~/.vimrc'

function mkcd
	mkdir $argv; and cd $argv
end

function mkmv
	set dir $argv[1]
	mkdir $dir; and mv $argv[2] $dir
end

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias connect='nmcli dev wifi connect'
alias i3config 'vim ~/.config/i3/config'
alias ls='ls --group-directories-first'
alias mkd='mkdir -pv'
alias vimrc='vim ~/.vimrc'
alias xi='sudo xbps-install'

set EDITOR vim
set TERMINAL st
set VIFM $HOME/.config/vifm/vifmrc

set PATH $HOME/bin  $HOME/scripts/ $PATH

function mkcd
	mkdir $argv; and cd $argv
end

function mkmv
	set dir $argv[1]
	mkdir $dir; and mv $argv[2] $dir
end

if status is-login
	if test -z "$DISPLAY" -a (tty) = /dev/tty1
		exec startx -- -keeptty
	end
end


#alias vim='nvim'
#alias vimrc='vim ~/.config/nvim/init.vim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias weather='bash  -c "curl wttr.in/Eindhoven?0"'

alias connect='nmcli dev wifi connect'
alias i3config 'vim ~/.config/i3/config'
alias ls='ls --group-directories-first'
alias mkd='mkdir -pv'
alias vimrc='vim ~/.vimrc'
alias xi='sudo xbps-install'

set EDITOR vim
set TERMINAL st
set VIFM $HOME/.config/vifm/vifmrc

set PATH $HOME/bin $HOME/scripts/ $GOBIN $PATH

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

if status is-interactive
    switch $TERM

        # Fix DEL key in st
        case 'st*'
            set -gx is_simple_terminal 1

        case "linux"
            set -ex is_simple_terminal
            function fish_prompt
                fish_fallback_prompt
            end
    end

    if set -q is_simple_terminal
        tput smkx ^/dev/null
        function fish_enable_keypad_transmit --on-event fish_postexec
            tput smkx ^/dev/null
        end

        function fish_disable_keypad_transmit --on-event fish_preexec
            tput rmkx ^/dev/null
        end
    end
end

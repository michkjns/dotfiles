source ~/.config/fish/ssh_agent_start.fish

#alias vim='nvim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias connect='nmcli dev wifi connect'
alias ls='ls --group-directories-first'
alias vim='nvim'
alias ll='ls -l --color=auto'
alias pylint='python3 -m pylint'

abbr fishconf 'vim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish'
abbr i3config 'vim ~/.config/i3/config'
abbr mkd 'mkdir -pv'
abbr vimrc 'vim ~/.config/nvim/init.vim'
abbr weather 'bash  -c "curl wttr.in/Eindhoven?0"'
abbr todo 'cat ~/notes/todo.md'
abbr v vim
abbr gs 'git status'
abbr gg 'git grep'

set EDITOR vim
set TERMINAL xterm-termite
set VIFM $HOME/.config/vifm/vifmrc

set PATH $HOME/bin $HOME/scripts/ $GOBIN $PATH
set XDG_CONFIG_HOME $HOME/.config

function mkcd
	mkdir $argv; and cd $argv
end

function notes
	grep $argv ~/notes/commands.md
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

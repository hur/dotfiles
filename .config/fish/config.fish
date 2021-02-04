theme_gruvbox dark medium

# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color green 
	echo -n (whoami)
	set_color normal
	echo -n '@'
	set_color blue
	echo -n (hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '$ '
	set_color normal
end

set fish_greeting

eval (dircolors -c ~/.dircolors/gruvbox.dircolors)

source /home/atte/Documents/github/exercism-cd-on-dl/exercism-dl-fish.sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
bass source /opt/ros/foxy/setup.bash
alias eufs_ide='bass source ~/Documents/eufs/eufs-master/install/setup.bash && bass nohup /opt/clion-2020.2.3/bin/clion.sh &'
alias vim="nvim"

#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

#Aliases
alias xf="ruby ~/:;#"
alias updatext="bash ~/.ruxt/lib/bin/update.sh"
alias xt="ruby ~/.ruxt/lib/bin/extract.rb"
alias updatetldr="bash ~/.rtldr/lib/bin/update.sh"
alias tldr="ruby ~/.rtldr/tldr"

#Always use grep -E instead of regular grep
alias grep="grep -E"

#Always start rtv using the media flag
alias rtv="rtv --enable-media"

#Alias for starting the Tor Browser
alias starttor="cd ~/Tor/ ; ./start-tor-browser.desktop"

#Alias for viewing the weather
alias weather="ansiweather"

# Other environment variable changes
export RTV_BROWSER=w3m
export VISUAL=vim
export EDITOR="$VISUAL"
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" #Must be the last PATH change!

#cdn + number will move to the xth parent directory (cdn 2 = cd ../..)
function cdn() { for i in `seq $1`; do cd ..; done; }

#Prevent nested ranger instances
ranger() {
  if [ -z "$RANGER_LEVEL" ]; then
    /usr/bin/ranger "$@"
  else
    exit
  fi
}

#For Pywal
(wal -r &) 2> bloodyerror.log #Ranger says it's deprecated and it keeps annoying me with this error

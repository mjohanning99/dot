#
# ~/.bashrc
#

#Own settings
function cdn() { for i in `seq $1`; do cd ..; done; }
alias grep="grep -E"
(wal -r &)

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
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export VISUAL=vim
export EDITOR="$VISUAL"
alias  xf="ruby ~/:;#"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/fs0ciety/.rvm/bin:/home/fs0ciety/.rvm/bin:/home/fs0ciety/.vimpkg/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source /home/fs0ciety/perl5/perlbrew/etc/bashrc
alias updatext="bash ~/.ruxt/lib/bin/update.sh"
alias xt="ruby ~/.ruxt/lib/bin/extract.rb"
alias updatetldr="bash ~/.rtldr/lib/bin/update.sh"
alias tldr="ruby ~/.rtldr/tldr"
alias starttor="cd ~/Tor/ ; ./start-tor-browser.desktop"
alias weather="ansiweather"
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

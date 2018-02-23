if [ $TTY ] ; then

    HISTFILE=~/.zhistory
    SAVEHIST=300000
    HISTSIZE=300000

    case $TERM in
	xterm*)
            precmd () {
		if [ "`uname -s`" = "SunOS" ] ; then
		    echo -ne '\ek'$HOST:`basename $PWD`'\e\\'
		fi
		print -Pn "\e]0;%m: %~\a"
	    }
            ;;
    esac
    
    bindkey -e

    unsetopt ignoreeof
    unsetopt printexitvalue

    setopt   autocd
    setopt   autopushd
    setopt   nobeep

    autoload -U is-at-least
    if is-at-least 4.2.1
    then
	autoload -Uz compinit

	setopt histappend
	setopt histexpiredupsfirst
	setopt histignorealldups
	setopt histreduceblanks
	setopt histsavenodups
	setopt incappendhistory
	setopt sharehistory
    else
	autoload -U compinit
	setopt appendhistory
    fi
    compinit -u

    alias lf='ls -FsC'
    alias la='ls -al'
    alias ll='ls -l'
    alias lt='ls -altr'
    
    alias rm='rm -i'
    alias cp='cp -i'
    alias mv='mv -i'
    
    alias a=alias
    alias h=history
    
    alias -- -=popd
    
    export PS1='[ %* ] %B%n@%m:%b%1~ %# '
    export VISUAL=emacs
    export EDITOR=emacs
    
fi

case "`uname -s`" in
    SunOS)
        export PATH=$PATH:/opt/csw/bin:/opt/csw/sbin

	if [[ "$MANPATH" != "" ]] ; then
	    export MANPATH=$MANPATH:/opt/csw/man
	fi

	alias globalzone='eeprom|fgrep banner=|cut -d= -f2'
        ;;
esac

ts() {
    date '+%y%m%d.%H%M'
}

acp() {
    cp -pi $1 $1.`date '+%y%m%d.%H%M'`
}

if [[ -f ~/.zshrc.`hostname` ]] ; then
   source  ~/.zshrc.`hostname`
fi

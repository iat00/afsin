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
		print -Pn "\e]0;%n@%m: %~\a"
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

# unset ANT_HOME
# unset CLASSPATH
# unset COBDIR
# unset LC_COLLATE
# unset LC_CTYPE
# unset LC_MESSAGES
# unset LC_MONETARY
# unset LC_NUMERIC
# unset LC_TIME
# unset MAIL
# unset MANPATH
# unset NLS_DATE_FORMAT
# unset NLS_LANG
# unset NLSPATH
# unset ORACLE_HOME
# unset ORACLE_SID
# unset PAGER
# unset TAPE8
# unset TAPE8N
# unset TELEESC
# unset TELETAG
# unset TELEROOT
# unset LD_LIBRARY_PATH_64
# unset JAVA_HOME

# LD_LIBRARY_PATH=`echo $LD_LIBRARY_PATH | sed 's|^/usr/lib:||;s|:/usr/lib:|:|g;s|:/usr/lib$||'`
# LD_LIBRARY_PATH=`echo $LD_LIBRARY_PATH | sed 's|/opt/lib/cobol/lib:||g;s|/opt/lib/cobol/lib$||g'`
# LD_LIBRARY_PATH=`echo $LD_LIBRARY_PATH | sed 's|/opt/SMAW/lib:||g;s|/opt/SMAW/lib$||g'`
# LD_LIBRARY_PATH=`echo $LD_LIBRARY_PATH | sed 's|:$||g'`

# PATH=`echo $PATH | sed 's|/opt/SMAW/SMAWtssv/tele/bin:||g;s|/opt/SMAW/SMAWtssv/tele/bin$||g'`
# PATH=`echo $PATH | sed 's|/opt/SMAW/bin:||g;s|/opt/SMAW/bin$||g'`
# PATH=`echo $PATH | sed 's|/opt/SMAW/sbin:||g;s|/opt/SMAW/sbin$||g'`
# PATH=`echo $PATH | sed 's|/opt/SMAWPlus/bin:||g;s|/opt/SMAWPlus/bin$||g'`
# PATH=`echo $PATH | sed 's|/opt/VRTSvxfs/sbin:||g;s|/opt/VRTSvxfs/sbin$||g'`
# PATH=`echo $PATH | sed 's|/opt/cognos/c8/bin:||g;s|/opt/cognos/c8/bin$||g'`
# PATH=`echo $PATH | sed 's|/opt/emc/VolumeLogix:||g;s|/opt/emc/VolumeLogix$||g'`
# PATH=`echo $PATH | sed 's|/opt/nsr/amon/bin:||g;s|/opt/nsr/amon/bin$||g'`
# PATH=`echo $PATH | sed 's|/usr/emc/VolumeLogix:||g;s|/usr/emc/VolumeLogix$||g'`
# PATH=`echo $PATH | sed 's|/usr/ftc97/ftos:||g;s|/usr/ftc97/ftos$||g'`
# PATH=`echo $PATH | sed 's|/usr/jdk/latest/bin:||g;s|/usr/jdk/latest/bin$||g'`
# PATH=`echo $PATH | sed 's|/usr/symcli64/bin:||g;s|/usr/symcli64/bin$||g'`
# PATH=`echo $PATH | sed 's|/usr/opt/SUNWmd/sbin:||g;s|/usr/opt/SUNWmd/sbin$||g'`
# PATH=`echo $PATH | sed 's|/opt/srs:||g;s|/opt/srs$||g'`
# PATH=`echo $PATH | sed 's|/opt/nsr:||g;s|/opt/nsr$||g'`
# PATH=`echo $PATH | sed 's|/usr/openwin/bin:||g;s|/usr/openwin/bin$||g'`
# PATH=`echo $PATH | sed 's|/usr/ccs/bin:||g;s|/usr/ccs/bin$||g'`
# PATH=`echo $PATH | sed 's|/usr/xpg4/bin:||g;s|/usr/xpg4/bin$||g'`
# PATH=`echo $PATH | sed 's|/usr/games:||g;s|/usr/games$||g'`
# PATH=`echo $PATH | sed 's|:$||g'`

case "`uname -s`" in
    SunOS)
        export PATH=$PATH:/opt/csw/bin:/opt/csw/sbin

	if [[ "$MANPATH" != "" ]] ; then
	    export MANPATH=$MANPATH:/opt/csw/man
	fi

        ;;
esac

envclean() {
    source =(egrep '^# (PATH|LD_LIBRARY_PATH|unset)' ~/.zshrc|cut -c3-)

    case "`uname -s`" in
	SunOS)
	    PATH=`echo $PATH | sed 's|/usr/bin:/bin:|/usr/bin:|g;s|/usr/bin:/bin$|/usr/bin|g'`
	    ;;
    esac

    export PATH
    export LD_LIBRARY_PATH
}

for i in `env|egrep '^LC_'|cut -d= -f1`
do
    unset $i
done

typeset -U PATH
typeset -U LD_LIBRARY_PATH
typeset -U MANPATH

ts() {
    date '+%y%m%d.%H%M'
}

acp() {
    cp -pi $1 $1.`date '+%y%m%d.%H%M'`
}

if [[ -f ~/.zshrc.`hostname` ]] ; then
   source  ~/.zshrc.`hostname`
fi

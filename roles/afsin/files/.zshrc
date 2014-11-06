if [ $TTY ] ; then

    HISTFILE=~/.zhistory
    SAVEHIST=200000
    HISTSIZE=200000

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

    setopt   appendhistory
    setopt   autocd
    setopt   autopushd
    setopt   nobeep

    autoload -U is-at-least

    is-at-least 4.2.1 &&  setopt histappend
    is-at-least 4.2.1 &&  setopt histexpiredupsfirst
    is-at-least 4.2.1 &&  setopt histignorealldups
    is-at-least 4.2.1 &&  setopt histsavenodups
    is-at-least 4.2.1 &&  setopt sharehistory
        
    if is-at-least 4.2.1
    then
	autoload -Uz compinit
    else
	autoload -U  compinit
    fi
    compinit

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

envclean()
{
    source =(egrep '^# (PATH|LD_LIBRARY_PATH|unset)' ~/.zshrc|cut -c3-)

    case "`uname -s`" in
	SunOS)
	    PATH=`echo $PATH | sed 's|/usr/bin:/bin:|/usr/bin:|g;s|/usr/bin:/bin$|/usr/bin|g'`
	    ;;
    esac

    export PATH
    export LD_LIBRARY_PATH
}

timestamp(){date '+%y%m%d.%H%M'}
acp(){cp -pi $1 $1.`timestamp`}

for i in `env|egrep '^LC_'|cut -d= -f1`
do
    unset $i
done

export PATH=$PATH:~/bin

if [[ -f ~/.zshrc.host03 ]] ; then
   source  ~/.zshrc.host03
fi

typeset -U PATH
typeset -U LD_LIBRARY_PATH
typeset -U MANPATH

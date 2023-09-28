export HOME="/Users/yikelu"

export EC2_HOME=$HOME/.ec2
export EC2_PRIVATE_KEY=$EC2_HOME/pk-FT46IN4H6Q77KH6IWHJ2N4ZHYZ5X4ATF.pem
export EC2_CERT=$EC2_HOME/cert-FT46IN4H6Q77KH6IWHJ2N4ZHYZ5X4ATF.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

## I am cleaning up my path
BASE_PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
BASE_PATH=/opt/x11/bin:/usr/X11/bin:$BASE_PATH

MAIN_PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin
MAIN_PATH=$MAIN_PATH:/usr/texbin
MAIN_PATH=$MAIN_PATH:$HOME/.local/bin
MAIN_PATH=$MAIN_PATH:$HOME/gtk/inst/bin
MAIN_PATH=$HOME/Library/Haskell/bin:$MAIN_PATH
MAIN_PATH=/usr/local/bin/godi_bin:$MAIN_PATH
MAIN_PATH=$MAIN_PATH:$EC2_HOME/bin

UTILS_PATH=$HOME/bin
UTILS_PATH=$UTILS_PATH:$HOME/dev/R_core/bin

export PATH=$UTILS_PATH:$MAIN_PATH:$BASE_PATH

export MANPATH=/usr/local/Cellar/godi/man:$MANPATH

#export USERWM=`which xmonad`

#export VIMRUNTIME="${HOME}/.vim"
#export VIM="/usr/share/vim"

export RLWRAP_HOME="${HOME}/.rlwrap"

LD_LIBRARY_PATH=$HOME/Library
LD_LIBRARY_PATH=/Library:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/Library/Haskell/current/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/Library/Frameworks/GHC.framework/Versions/Current/usr/lib/ghc-7.0.4:$LD_LIBRARY_PATH

export LD_LIBRARY_PATH

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

alias d="cd .."
alias dd="cd ../.."
alias vb="vi ~/.bash_common.sh"
alias eb="ec ~/.bash_common.sh"
alias sb="source ~/.bash_profile"
alias ve="vi ~/.emacs.d/init.el"
alias ee="ec ~/.emacs.d/init.el"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias rv="R --vanilla"
alias kill_emacs_daemon="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -e '(kill-emacs)'"

alias l="ls -G"
alias ll="ls -Glh"
alias llt="ls -Gltrh"

alias j="/Applications/j64-701/bin/jconsole"
alias q="rlwrap -f $RLWRAP_HOME/q_words -pRed -c ${HOME}/q/m32/q"
alias k="rlwrap -pRed -c -S 'k>> ' /usr/local/bin/k"
alias ipqt="ipython-qtconsole"
alias emnw="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias ed="/Applications/Emacs.app/Contents/MacOS/Emacs --daemon"
alias ec="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t"
export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t"

alias sshec="ssh -i ~/.ec2/myCentOS.pem ubuntu@ec2"


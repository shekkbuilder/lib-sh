# ---------------------------------------------------------------------------
# Settings and overrides specific to host "tributary"
# ---------------------------------------------------------------------------
export www='/usr/local/site/www/apache'
export wwwtest="$www/wwwtest"
export CVSROOT=/usr/local/src/my-stuff/CVS-tree
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/site/lib

export PATH=\
$PATH:\
/usr/local/site/sbin:\
/usr/local/sbin:\
/usr/sbin:\
/sbin:\
/usr/X11R6/bin:\
/usr/local/spamassassin/bin

# Local aliases

alias frm="$(type -P frm) -S"
alias ftp=ncftp3
alias vi=vim
alias www='varcd www'
alias wwwtest='varcd wwwtest'

# ---------------------------------------------------------------------------
# Development stuff

export ANT_HOME=/usr/local/ant
load_file ~/bash/java.sh

# ---------------------------------------------------------------------------
#
# $Id$
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Misc. environment variables

export PERL5LIB=$HOME/lib/perl
export mystuff=$HOME/src/mystuff

export FORTUNE_FILE=$HOME/src/mystuff/fortunes/fortunes
export DFSPACE_OPTS='-t vfat'
export SCALA_HOME=$HOME/scala/scala-2.8.0
export JYTHON_HOME=$HOME/jython

export CLASSPATH=\
$CLASSPATH:\
/usr/share/java/hsqldb.jar:\
/usr/share/java/hsqldbutil.jar:\
/usr/share/java/mysql-connector-java.jar:\
/usr/share/java/postgresql.jar:\
$HOME/java/classes/sqlitejdbc-v056-pure.jar:\
$HOME/java/classes/h2-1.2.129.jar

export JAVA_HOME=/usr/lib/jvm/java-6-openjdk

export www=/var/www
export alphacode=$HOME/src/consulting/alphabuyer

# ---------------------------------------------------------------------------
# PATH

export PATH=\
$HOME/bin:\
$HOME/.gem/ruby/1.8/bin:\
$HOME/.cabal/bin:\
$HOME/python/bin:\
$HOME/jython/bin:\
/usr/bin:\
/bin:\
$HOME/scala/scala-2.8.0/bin:\
$PATH:\
/usr/local/sbin:\
/usr/sbin:\
/sbin

# ---------------------------------------------------------------------------
# Programmatic Completion

. ~/bash/openvpn.sh

# ---------------------------------------------------------------------------
# Aliases and functions

alias alphacode='varcd alphacode'
alias ftp=ncftp
alias mllog="sudo tail -f /var/log/mail.log"
alias mslog="sudo tail -f /var/log/messages"
alias nslookup="$(type -P nslookup) -silent"
alias mystuff="varcd mystuff"
alias mypy='varcd mypy'
alias photos='varcd photos'
alias top=htop
alias www='varcd www'

load_file ~/bash/java.sh
load_file ~/bash/scala.sh

# ---------------------------------------------------------------------------
# Ruby

rvm 1.8.7-p334
if interactive
then
    echo "Using Ruby $(rvm current)"
fi

# ---------------------------------------------------------------------------
# Python stuff

pythonbrew use 2.6.6 >/dev/null 2>&1

# ---------------------------------------------------------------------------
# Local stuff

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib:$HOME/lib

load_file ~/bash/ubuntu.sh
# Not necessary on Ubuntu; Ubuntu starts one that's integrated into Gnome.
#load_file ~/bash/ssh.sh

export RAILS_ENV=briandev

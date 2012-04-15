export CLICOLOR=1
export TERM=xterm-color
export PYTHONPATH=$PYTHONPATH:$HOME/Projects/APP_crazyhorse:$HOME/Projects/APP_constellation/iris:$HOME/Projects/APP_constellation/orion
export WORKON_HOME=$HOME/.virtualenv
export JAVA_HOME=/usr
#export NEO4J_PYTHON_CLASSPATH=/Users/aventurella/Downloads/neo4j-community-1.6/lib
#export DEBUG=true
PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/Users/aventurella/github/virtualenv:$PATH

#virtualenv and mkvirtualenv
source $WORKON_HOME/default/bin/activate
source $HOME/.virtualenv/default/bin/virtualenvwrapper.sh


#export PYTHONSTARTUP=$HOME/pycon/advpython2/pystartup.py
export PS1='[\[\033[0;35m\]$(hostname) \[\033[0;37m\]\w\[\033[0m\]$(__git_ps1 " (\[\033[0;33m\]%s\[\033[0m\])")]\n$(date +%H:%M) \$ '

if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
fi
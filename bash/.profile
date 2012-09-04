export CLICOLOR=1
export TERM=xterm-color
export JAVA_HOME=/usr
#export NEO4J_PYTHON_CLASSPATH=/Users/aventurella/Downloads/neo4j-community-1.6/lib
#export DEBUG=true
PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/Users/aventurella/github/virtualenv:$PATH

export PS1='[\[\033[0;35m\]$(hostname) \[\033[0;37m\]\w\[\033[0m\]$(__git_ps1 " (\[\033[0;33m\]%s\[\033[0m\])")]\n$(date +%H:%M) \$ '

if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
fi

# ssh-agent
# ensure the agent plist is running as well
# see http://tim.vanwerkhoven.org/post/2011/11/17/OSX-launchd-and-launchctl-issues
# for more info : launchctl list org.openbsd.ssh-agent
SSH_AGENT_KEYS=`ssh-add -l`
if [ "$SSH_AGENT_KEYS" = "The agent has no identities." ]; then
    `ssh-add &>/dev/null`
fi

# python
# http://docs.python.org/using/cmdline.html#environment-variables
export PYTHONPATH=$PYTHONPATH:$HOME/Projects/APP_crazyhorse:$HOME/Projects/APP_constellation/iris:$HOME/Projects/APP_constellation/orion
export PYTHONSTARTUP=$HOME/pycon/advpython2/pystartup.py
export PYTHONDONTWRITEBYTECODE=1

#virtualenv and mkvirtualenv
export WORKON_HOME=$HOME/.virtualenv
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_REQUIRE_VIRTUALENV=true
export PIP_RESPECT_VIRTUALENV=true
source $WORKON_HOME/default/bin/activate
source $HOME/.virtualenv/default/bin/virtualenvwrapper.sh

#export PS1='[\[\033[0;35m\]$(hostname) \[\033[0;37m\]\w\[\033[0m\]$(__git_ps1 " (\[\033[0;33m\]%s\[\033[0m\])")]\n$(date +%H:%M) \$ '


# .bashrc


# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#export JAVA_HOME="/user/lib/jvm/java-1.8.0-openjdk-1.8.0-302.b08-0.amzn2.0.1.x86_64/jre"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-11.0.12.0.7-0.amzn2.0.2.x86_64/"
PATH=$JAVA_HOME/bin:$PATH


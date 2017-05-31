# .bashrc

# styling of name
if [ -e bashrc_pwd.py ]; then
  PS1='\[\033[0;34m\]\[\033[0m\033[0;33m\]\u\[\033[0;37m\]@$(python2 ~/bashrc_pwd.py)\[\033[1;31m\] [$(git branch 2>/dev/null | grep "^*" | colrm 1 2)]\n\[\033[0;33m\]└─\[\033[0m\033[0;33m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '
else
  PS1='\[\033[0;34m\]\[\033[0m\033[0;33m\]\u\[\033[0;37m\]@\W\[\033[1;31m\] [$(git branch 2>/dev/null | grep "^*" | colrm 1 2)]\n\[\033[0;33m\]└─\[\033[0m\033[0;33m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#android
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools


# enable vi-mode for gnome-terminal
set -o vi
#bind "jj":vi-movement-mode #doesn't work, takes only one j as sufficient..

#export PATH=$PATH:/usr/lib/python2.6/site-packages
#alias python='/usr/bin/python3.3'

#For saving files with timestamp
now=$(date +"%Y_%m_%d")

# Start Friends
alias start_friends="cd /home/cyril/Dropbox/Privat/lernen/Computer/Programming/Python/frinds_shutdown; ./main_new.py"

# User specific aliases and functions
#alias goplay="cd /home/taawecy2/Desktop/Cyril/Arbeit/rails_workspace/"
alias goplay="cd /home/cyril/Dropbox/Privat/lernen/Computer/Programming/Python/"
alias gocosmos="cd /home/cyril/Dropbox/Arbeit/ETH/PA_Masterarbeit/MasterThesis_Code_Sicherung_PreVimCleanUp/cosmoslensing"
#alias gocmdb="cd /home/taawecy2/Desktop/Cyril/Arbeit/rims/cmdb/"
alias gowork="cd /home/cyril/Dropbox/Arbeit/Swisscom/"
#alias rimsdir="/home/taawecy2/Desktop/Cyril/Arbeit/rims/"
alias playin="~/bash_scripts/tmsh"
alias tmin="~/bash_scripts/start_minimal"
alias priv_workin="~/bash_scripts/tmsh_priv"
alias workin="~/bash_scripts/start_workin"

# Work environment setup
#alias jump_l="ssh 192.168.190.11"
#alias vs_git3="ssh -f taawecy2@192.168.190.11 -L 2003:192.168.190.28:80 -N"
#alias vs_opennms2="ssh -f taawecy2@192.168.190.11 -L 2002:192.168.190.27:443 -N"
#alias vs_rabbit4="ssh -f taawecy2@192.168.190.11 -L 2004:192.168.190.11:3000 -N"
#alias vs_cmdb1="ssh -f taawecy2@192.168.190.11 -L 2001:192.168.190.32:8443 -N"
#alias tunnel_to_lab="su -c 'cd /etc/openvpn/; openvpn --config lrrsm001-bb-TCP-1194-taawecy2.ovpn'"
#alias tunnel_to_prod="su -c 'cd /etc/openvpn/; openvpn --config rrsm001-bb-TCP-1194-taawecy2.ovpn'"
#alias tunnel_to_int="su -c 'cd /etc/openvpn/; openvpn --config irrsm001-bb-TCP-1194-taawecy2.ovpn'"
#alias vs_cust5010_isbsa004="ssh -N -L localhost:5010:isbsa004:443 taawecy2@192.168.109.11"
#alias vs_prov5020_islac004="ssh -N -L localhost:5020:islac004:443 taawecy2@192.168.109.11"

# Git shortcuts
alias gaa="git add -A"
alias gst="git status"
alias glo="git log"
alias gbr="git branch"
alias gpu="git push"
alias gph="git push heroku"
alias gcommit="git commit -am"
alias gcm="git checkout master"
alias gcn="git checkout -b"
alias gcb="git checkout"

# Rails shortcuts
alias rt="rails test"

# Using Python 3 by default
alias python="echo 'Bashrc is overwritting python default from 2 to 3!!';python3"

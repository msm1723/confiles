PS1='\n\[\l][\!][\#][\j]: \w\n\$ '

## mc cyrillic issue solved (:
export LC_ALL='en_US.UTF-8'
# alias mc='LC_ALL="en_US.UTF-7" mc'

## mc wrapper
alias mc='. /usr/local/Cellar/midnight-commander/4.8.19/libexec/mc/mc-wrapper.sh'

## integration with iterm2
source ~/.iterm2_shell_integration.`basename $SHELL`

## shell function to view man pages in Preview app
pman() {
    man -t ${@} | open -f -a /Applications/Preview.app/
}

## refresh shell 'source ~/.bash_profile'
alias reload='. ~/.bashrc'

## ls aliases
alias ls='ls -GCF' # color, multicolumns, filetypes
alias la='ls -A' # all files except . and .. (almost all)
alias l.='ls -d .*' # only hidden fil
alias ll='ls -lah' # long list alphabetical sort
alias lt='ls -lahtr' # long list oldest first sort
alias lz='ls -lahS' # long list largest first
alias l='ls -dlh' # long dir info

## cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias pd='cd -' # cd into the previous directory

## verbose
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'
alias cls='clear'

## myip, FQDN
alias myip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias fqdn="host `hostname`"

## grep with color
alias grep='grep --color=auto'

## lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

## ssh
alias ssx="ssh -C -X -c blowfish-cbc" # -C compress ssh stream; -X enable X11; -c set cypher type
alias avokado='ssh kim@192.168.0.103'

## rsync
alias rsynk="rsync -avzhP"

## processes
# alias ps='ps -ax'

## backup
# alias backup='sudo rsync -av --delete /etc /home /usr/local/media/BigDisk/backup'

## LM docker
# export DOCKER_HOST='smazurov.docker.qa.lamoda.tech:2376'
alias d='DOCKER_HOST=smazurov.docker.qa.lamoda.tech:2376 docker'
alias n='NOMAD_ADDR="http://$(dig @smazurov.docker.qa.lamoda.tech +short http.nomad.service.consul | head -1):4646" nomad'
# change docker
d_env() { export DOCKER_HOST="tcp://$1.docker.qa.lamoda.tech:2376"; }
d_local() { unset DOCKER_HOST; }
# change nomad
n_env() { export NOMAD_ADDR="http://smazurov.docker.qa.lamoda.tech:4646";  }
n_local() { unset NOMAD_ADDR; }
# change docker and nomad
e_env() { d_env $1; n_env $1; }
e_local() { d_local; n_local; }


eval "$(direnv hook bash)"

## LM ssh pathfrase to keychain
alias key="ssh-add -K ~/.ssh/id_rsa"

## LM test stands ssh
alias dck="ssh smazurov@smazurov-01.docker.qa.lamoda.tech"
alias mydb="ssh smazurov@smazurov.mysql01.qa.lamoda.tech"
alias pgsql01="ssh sergeymazurov-01.pgsql01.qa.lamoda.tech"
alias pgsql96="ssh sergeymazurov-01.pgsql96.qa.lamoda.tech"

alias xdc="ssh smazurov@smazurov.xdc.qa.lamoda.tech"

alias e00="ssh smazurov@express.at.qa.lamoda.tech -t 'cd /data/www/express/current/; bash --login'"
alias e02="ssh smazurov@express02.at.qa.lamoda.tech -t 'cd /data/www/express/current/; bash --login'"
alias e03="ssh smazurov@express03.at.qa.lamoda.tech -t 'cd /data/www/express/current/; bash --login'"

alias a01="ssh sergey.mazurov@express01.qa.akado -t 'cd /lamoda/www/current; bash --login'"
alias a02="ssh sergey.mazurov@express02.qa.akado -t 'cd /lamoda/www/current; bash --login'"
alias a03="ssh sergey.mazurov@express03.qa.akado -t 'cd /lamoda/www/current; bash --login'"
alias a04="ssh sergey.mazurov@express04.qa.akado -t 'cd /lamoda/www/current; bash --login'"
alias a05="ssh sergey.mazurov@express05.qa.akado -t 'cd /lamoda/www/current; bash --login'"


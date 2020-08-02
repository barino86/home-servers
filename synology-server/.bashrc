# NETWORKING
alias portsused='sudo netstat -tulpn | grep LISTEN'

# FILE SIZE AND STORAGE
alias free='free -h'
alias fdisk='sudo fdisk -l'
alias uuid='sudo vol_id -u'
alias ll='ls -alh'
alias dirsize='sudo du -hx --max-depth=1'

# SYSTEM
alias pushss='pushd ~/home-servers/synology-server'
alias pushdc='pushd /volume1/docker'

# DOCKER
alias dexec='sudo docker exec -ti'
alias docps='sudo docker ps -a'
alias dclogs='sudo docker logs -tf --tail="50" '
alias dstopcont='sudo docker stop $(docker ps -a -q)'
alias dstopall='sudo docker stop $(sudo docker ps -aq)'
alias drmcont='sudo docker rm $(docker ps -a -q)'
alias dvolprune='sudo docker volume prune'
alias dsysprune='sudo docker system prune -a'
alias ddelimages='sudo docker rmi $(docker images -q)'
alias docerase='dstopcont ; drmcont ; ddelimages ; dvolprune ; dsysprune'
alias docprune='ddelimages ; dvolprune ; dsysprune'

# SYNOLOGY SERVER STACK
alias dcssrun='cd ~/home-servers/synology-server ; sudo docker-compose -f ~/home-servers/synology-server/docker-compose.yaml '
alias dcsslogs='cd ~/home-servers/synology-server ; sudo docker-compose -f ~/home-servers/synology-server/docker-compose.yaml logs -tf --tail="50" '
alias dcssup='dcssrun up -d'
alias dcssdown='dcssrun down'
alias dcssrec='dcssrun up -d --force-recreate'
alias dcssstop='dcssrun stop'
alias dcssrestart='dcssrun restart '
alias dcsspull='cd ~/home-servers/synology-server ; sudo docker-compose -f ~/home-servers/synology-server/docker-compose.yaml pull'

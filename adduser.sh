#!/bin/bash
#
users=$*

containId=jupyterhub

. /etc/rc.d/init.d/functions

for user in $users
do 
  if
    docker exec $containId mkdir /srv/jupyterhub/home/$user 
    docker exec $containId useradd $user -d /srv/jupyterhub/home/$user
    docker exec $containId chown -R $user /srv/jupyterhub/home/$user
    docker exec $containId bash -c "echo $user:$user | chpasswd"
  
  then
    action "User $user add success."   /bin/true
  else
    action "User $user add Fail." /bin/false
  fi

done


docker ps | awk '{print$1}' | tail -n +2 | xargs -I {} sh -c 'echo docker exec -it "$1" /bin/sh  > /tmp/"$1".command; chmod +x /tmp/"$1".command; open /tmp/"$1".command' -- {}

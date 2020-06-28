#/bin/bash

docker run -d -it -e EULA=TRUE -e VERSION=1.16 -e DIFFICULTY=normal -e ALLOW_CHEATS=true -e GAMEMODE=creative -p 19132:19132/udp -v /Users/kai_lam/git/docker-minecraft-bedrock-server/server.properties:/data/server.properties itzg/minecraft-bedrock-server

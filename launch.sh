#/bin/bash

allowCheats="true" # true, false
containerPort="19132"
difficulty="normal" # normal, easy, hard
gameMode="creative" # creative, survival
hostPort="19132"
bedrockVersion="1.16"

serverProperties="/Users/kai_lam/git/docker-minecraft-bedrock-server/server.properties:/data/server.properties"
permissions="/Users/kai_lam/git/docker-minecraft-bedrock-server/permissions.json:/data/permissions.json"

docker run -d -it -e EULA=TRUE -e VERSION=${bedrockVersion} -e DIFFICULTY=${difficulty} -e ALLOW_CHEATS=${allowCheats} -e GAMEMODE=${gameMode} -p ${containerPort}:${hostPort}/udp -v ${serverProperties} -v ${permissions}  itzg/minecraft-bedrock-server

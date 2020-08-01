#!/bin/bash
yum install java screen -y 
wget https://raw.githubusercontent.com/Haocen2004/web_driver/master/server.zip -O server.zip
unzip server.zip
cd server
wget https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar -O vserver.jar
echo eula=true>eula.txt
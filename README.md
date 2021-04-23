## Dev Ops Minecraft Server

Contributors - Kyle Smilon, Max Schuman, Justin Szaro

## Overview
Describe the project

## Setup
# Python Virtual Environment
## Dev Ops Minecraft Server

Contributors - Kyle Smilon, Max Schuman, Justin Szaro

## Overview
Describe the project

## Setup
# Python Virtual Environment
1. Move into localHost folder: cd localHost
2. Source into the venv: source .venv/bin/activate
3. Launch the minecraft server: java -Xmx1024M -Xms1024M -jar server.jar nogui

# AWS Minecraft Server
1. Launch your AWS Lightsail instance
2. Configure and Connect to your instance
3. In "Networking" add a firewall rule to allow port 25565
4. Tab over to the connect tab and select "Connect using SSH"
5. Enter the following command(this updates the server and installs javaRuntime) :  sudo apt -y update && sudo apt -y install default-jre screen
6. Create your minecraft directory: sudo mkdir /usr/games/minecraft
7. Switch into your Miencraft directory : 
cd /usr/games/minecraft
8. Download the server.jar file : sudo wget -O mcserver.jar https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
9. Use the following command to run the minecraft server : sudo java -Xmx1G -Xms1G -jar mcserver.jar nogui
10. Launch minecraft and add server using the public IP from the instance you created



## Technologies Used
Provide a links to the homepage for each technology used.
Vagrant: https://www.vagrantup.com/
AWS: https://aws.amazon.com/ 
Java Download: http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html 


##  Background
Provide links to the sources you looked at to get your system working. This would help another person reproduce your work.

Installing Java on Ubuntu: https://ubuntu.com/tutorials/install-jre#3-installing-oracle-jre
Java SE Documentation: https://docs.oracle.com/javase/7/docs/technotes/tools/windows/java.html
AWS: https://aws.amazon.com/getting-started/hands-on/run-your-own-minecraft-server/?sc_channel=EL&sc_campaign=Demo_deep_dive_2020_vid&sc_medium=YouTube&sc_content=Video7662&sc_detail=COMPUTE&sc_country=US








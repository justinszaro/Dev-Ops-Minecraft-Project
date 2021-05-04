## Dev Ops Minecraft Server

Contributors - Kyle Smilon, Max Schuman, Justin Szaro

## Overview
Project allows for creation of a Minecraft server on local machine through
virtual environment, virtual machine, and global server. Each Minecraft
server has a different manifest all implementing different features to make it
less "vanilla".

# Python Virtual Environment
In a virtual environment the server is created using a startup script command. The server is launched using a
spigot.jar file that allows for installing plugins such as Timber and ScoreBoard on port 25565 which is
specified in the script.
# Vagrant Virtual Environment
"vagrant up" will launch a minecraft forge server. The mod folder contains Tinkers Construct and Mantle. To join the server, the user must also have these Mods installed. Only players that are local on the machine can join this server.
# AWS Environment
After setting up the AWS server using the commands below and getting the public IP from the AWS lightsail instance menu. Joining the server is as simple as putting the IP into the IP slot in the multiplayer menu. Anyone can join aslong as they have the correct IP and a wifi connection.

## Setup
# Python Virtual Environment
1. Move into localHost folder: cd localHost
2. Run the startup script: bash startup.sh

# Vagrant Minecraft Server
1. Move into the vagrant folder: cd vagrant
2. Type in this command: vagrant up

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
10. You then are next going to need to switch the eula.txt file permissions : sudo chown ubuntu eula.txt
11. echo "eula=true" > eula.txt
12. sudo java -Xmx1G -Xms1G -jar mcserver.jar nogui
13. Launch minecraft and add server using the public IP from the instance you created


## Technologies Used
Vagrant: https://www.vagrantup.com/
AWS: https://aws.amazon.com/
Java Download: http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html
<<<<<<< HEAD
Minecraft Forge: https://files.Minecraftforge.net/net/Minecraftforge/forge/
Tinker's Construct: https://www.curseforge.com/Minecraft/mc-mods/tinkers-construct
Mantle: https://www.curseforge.com/Minecraft/mc-mods/mantle
Timber: https://www.curseforge.com/Minecraft/bukkit-plugins/timber-plugin/download
ScoreBoard: https://www.curseforge.com/Minecraft/bukkit-plugins/scoreboardstats/download
##  Background
Provide links to the sources you looked at to get your system working. This would help another person reproduce your work.
Minecraft Forge: https://files.minecraftforge.net/net/minecraftforge/forge/
Tinker's Construct: https://www.curseforge.com/minecraft/mc-mods/tinkers-construct
Mantle: https://www.curseforge.com/minecraft/mc-mods/mantle
Timber: https://www.curseforge.com/minecraft/bukkit-plugins/timber-plugin/download
Backpacks: https://www.curseforge.com/members/georgh93/projects
ScoreBoard: https://www.curseforge.com/minecraft/bukkit-plugins/scoreboardstats/download

##  Background
Installing Java on Ubuntu: https://ubuntu.com/tutorials/install-jre#3-installing-oracle-jre
Java SE Documentation: https://docs.oracle.com/javase/7/docs/technotes/tools/windows/java.html
AWS: https://aws.amazon.com/getting-started/hands-on/run-your-own-Minecraft-server/?sc_channel=EL&sc_campaign=Demo_deep_dive_2020_vid&sc_medium=YouTube&sc_content=Video7662&sc_detail=COMPUTE&sc_country=US
Tutorials/Setting up a Minecraft Forge server: https://Minecraft.fandom.com/wiki/Tutorials/Setting_up_a_Minecraft_Forge_server

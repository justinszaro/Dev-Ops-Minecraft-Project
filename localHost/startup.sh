#!/bin/bash
python3 -m venv .venv
source .venv/bin/activate
java -Xmx1G -jar spigot-1.16.5.jar --port 25565 --nogui

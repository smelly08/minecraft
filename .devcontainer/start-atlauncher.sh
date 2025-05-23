#!/bin/bash

# Set compatibility variable for Java GUI apps
export _JAVA_AWT_WM_NONREPARENTING=1

# Start XFCE desktop in background
startxfce4 &

# Wait a bit for GUI to initialize
sleep 5

# Launch ATLauncher
java -jar /home/vscode/ATLauncher/ATLauncher.jar

FROM mcr.microsoft.com/devcontainers/universal:2

# Install desktop environment utilities
RUN sudo apt-get update && sudo apt-get install -y \
    xfce4 \
    xfce4-terminal \
    x11-apps \
    firefox \
    && sudo apt-get clean

# Create a script to launch the desktop
COPY start-desktop.sh /home/vscode/start-desktop.sh
RUN chmod +x /home/vscode/start-desktop.sh && chown vscode:vscode /home/vscode/start-desktop.sh

CMD ["/home/vscode/start-desktop.sh"]

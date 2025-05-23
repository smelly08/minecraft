FROM mcr.microsoft.com/devcontainers/universal:2

# Install Java, GUI utilities, and wget
RUN sudo apt-get update && sudo apt-get install -y \
    openjdk-17-jre-headless \
    wget \
    xfce4-terminal \
    x11-apps \
    firefox \
    && sudo apt-get clean

# Prepare ATLauncher directory and download
RUN mkdir -p /home/vscode/ATLauncher && \
    wget https://atl.launcherfiles.com/ATLauncher.jar -O /home/vscode/ATLauncher/ATLauncher.jar

# Copy launcher startup script
COPY start-atlauncher.sh /home/vscode/start-atlauncher.sh
RUN chmod +x /home/vscode/start-atlauncher.sh && \
    chown -R vscode:vscode /home/vscode/

CMD ["/home/vscode/start-atlauncher.sh"]

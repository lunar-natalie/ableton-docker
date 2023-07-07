FROM x11docker/xwayland
RUN dpkg --add-architecture i386
RUN apt-get update && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y wget
RUN mkdir -pm755 /etc/apt/keyrings && \
    wget -O /etc/apt/keyrings/winehq-archive.key "https://dl.winehq.org/wine-builds/winehq.key" && \
    wget -NP /etc/apt/sources.list.d/ "https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources"
RUN apt-get update && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --install-recommends winehq-stable && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y cabextract
RUN wget -O /usr/bin/winetricks "https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks" && \
    chmod +x /usr/bin/winetricks

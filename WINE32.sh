dpkg --add-architecture i386
mkdir -pm755 /etc/apt/keyrings
wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
apt update
apt install --install-recommends winehq-stable
apt install libwine:i386 fonts-wine

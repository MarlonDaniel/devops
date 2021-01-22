from ubuntu
run apt-get update
run DEBIAN_FRONTEND=noninteractive apt-get --assume-yes -y install aria2
run apt-get --assume-yes install megatools
run apt-get --assume-yes install p7zip-full
run apt-get --assume-yes install vim
copy ["torrent.sh","/usr/local/bin"]
workdir /usr/local/bin/
run chmod +x torrent.sh
entrypoint ["torrent.sh"]
cmd [$ZIP_NAME,$ZIP_PASSWORD,$MEGA_USER,$MEGA_PASSWORD,$MEGA_PATH,$TORRENT]
# Build container:  docker build -t ubuntu:torrent .


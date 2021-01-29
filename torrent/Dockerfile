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
# docker run --rm -it ubuntu:torrent miarchivito 1234 mdcasusol@gmail.com elsanto /Root/Temporal/ "magnet:?xt=urn:btih:3E5ADF7201FBC6D8BF946DE6D5760805A6A9D779&dn=Udemy%20-%20Learn%20DevOps%3A%20Advanced%20Kubernetes%20Usage&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2920%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Ftracker.internetwarriors.net%3A1337%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.pirateparty.gr%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.cyberia.is%3A6969%2Fannounce"
# La contrasena no esta funcionando

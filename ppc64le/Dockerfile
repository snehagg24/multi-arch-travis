FROM ppc64le/debian:latest
RUN uname -a; dpkg --configure -a; apt update -y
RUN apt upgrade -y; apt --fix-broken install; apt install -y git
CMD echo "Hello World from a container running on $(uname -m)"

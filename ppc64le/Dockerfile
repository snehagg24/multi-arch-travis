FROM ppc64le/ubuntu:16.04
RUN uname -a; dpkg --configure -a; apt update -y; apt upgrade -y; apt --fix-broken install; apt install -y git
CMD echo "Hello World from a container running on $(uname -m)"

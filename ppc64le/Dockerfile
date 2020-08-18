FROM ppc64le/ubuntu:18.04
RUN uname -a; dpkg --configure -a; apt update -y; apt upgrade -y; apt install -y git
CMD echo "Hello World from a container running on $(uname -m)"

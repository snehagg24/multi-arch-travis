FROM ppc64le/debian:latest
RUN uname -a; dpkg --configure -a; LD_DEBUG=libs apt update -y; LD_DEBUG=libs apt upgrade -y; LD_DEBUG=libs apt --fix-broken install; LD_DEBUG=libs apt install -y git
CMD echo "Hello World from a container running on $(uname -m)"

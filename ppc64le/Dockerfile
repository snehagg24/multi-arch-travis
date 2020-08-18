FROM ppc64le/centos:latest
RUN dnf update -y; dnf upgrade -y; dnf install -y git
CMD echo "Hello World from a container running on $(uname -m)"

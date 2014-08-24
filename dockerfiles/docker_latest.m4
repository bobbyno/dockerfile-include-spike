# Install Latest Docker

# Ensure HTTPS transport is available to APT
RUN apt-get -y update && apt-get install -y apt-transport-https

# Add the repository to your APT sources
RUN echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# Then import the repository key
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# Install docker
RUN apt-get -y update && apt-get install -y lxc-docker

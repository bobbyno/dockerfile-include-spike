# Install common utilities

RUN apt-get -y update
RUN apt-get install -y -q python-software-properties software-properties-common build-essential curl wget

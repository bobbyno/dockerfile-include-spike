# Install Ruby

RUN apt-get -y update
RUN apt-get -y -q install zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
WORKDIR /tmp
RUN wget ftp://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.bz2
RUN tar xjf ruby-2.1.2.tar.bz2
WORKDIR /tmp/ruby-2.1.2
RUN ./configure --prefix=/usr/local --disable-install-doc
RUN make
# Speed up gem installs by skipping docs
RUN printf "install: --no-rdoc --no-ri\nupdate: --no-rdoc --no-ri\n" > /.gemrc
RUN make install

# Update basic gems
RUN gem install rubygems-update bundler
WORKDIR /

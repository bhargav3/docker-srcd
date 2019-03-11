FROM ubuntu
RUN apt-get update
RUN apt-get install -y\
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt-get install -y docker-ce docker-ce-cli containerd.io
RUN apt-get install -y wget
RUN wget https://github.com/src-d/engine/releases/download/v0.11.0/engine_v0.11.0_linux_amd64.tar.gz
RUN tar -xvf engine_v0.11.0_linux_amd64.tar.gz
RUN mv engine_linux_amd64/srcd /usr/local/bin/
RUN usermod -aG docker root
CMD /usr/local/bin/srcd

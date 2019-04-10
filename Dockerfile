FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
  nodejs \
  npm \
  wget \
  git
RUN wget https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb
RUN dpkg -i pandoc-2.7.2-1-amd64.deb
RUN git clone https://github.com/arossmann/confluence-to-markdown
WORKDIR /confluence-to-markdown
RUN npm install
RUN mkdir /mnt/markdown
VOLUME /mnt/markdown
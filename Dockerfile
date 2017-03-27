FROM node:7.4

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app
WORKDIR $HOME

RUN npm install -g angular@cli && npm cache clean
RUN wget -qO- https://get.docker.com/ | sh && rm -rf /var/lib/apt/lists/*


FROM node:12.19-slim

ENV USER=Gaming Family Music

# install python and make
RUN apt-get update && \
	apt-get install -y python3 build-essential && \
	apt-get purge -y --auto-remove
	
# create Gaming Family Music user
RUN groupadd -r ${USER} && \
	useradd --create-home --home /home/Gaming Family Music -r -g ${USER} ${USER}
	
# set up volume and user
USER ${USER}
WORKDIR /home/Gaming Family Music

COPY package*.json ./
RUN npm install
VOLUME [ "/home/Gaming Family Music" ]

COPY . .

ENTRYPOINT [ "node", "index.js" ]

FROM node:7-onbuild

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

HEALTHCHECK --interval=5s\
	--timeout=5s \
	CMD curl -f http://127.0.0.1:8100 || exit 1

EXPOSE 8100

CMD ["npm", "start" ]

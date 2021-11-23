FROM node:12.16.1

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . .

# install the modules within the container, rather than copying them from local
ENTRYPOINT ["npm", "start"]

# expose port such that you can later bind it within Docker Desktop
EXPOSE 3000
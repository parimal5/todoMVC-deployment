FROM node:lts-alpine3.20
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

#fixed
ENTRYPOINT ["node"] 
#override
CMD ["serve.js"] 
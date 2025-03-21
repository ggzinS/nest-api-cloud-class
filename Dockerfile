FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN nom install -g @nestjs/cli
RUN npm install --production
RUN npm i --save-dev @types/nodes
RUN nom run build
CMD ["npm", "run","start:prod"]
EXPOSE 3000

FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install -g @nestjs/cli
RUN npm install --production
RUN npm i --save-dev @types/nodes
RUN npm run build
CMD ["npm", "run","start:prod"]
EXPOSE 3000

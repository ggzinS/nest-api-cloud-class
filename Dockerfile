FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install --production
CMD ["npm", "run","start:prod"]
EXPOSE 3000

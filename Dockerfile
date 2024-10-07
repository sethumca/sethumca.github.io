FROM node:hydrogen-slim
RUN echo "npx version $(npx --version)" 
WORKDIR /app
RUN chown -R node:node /app
COPY package*.json ./
RUN npm install --save http-server
USER node
COPY . .
EXPOSE 8080
CMD ["npx http-server -p 8080"]
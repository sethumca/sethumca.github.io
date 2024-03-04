FROM node:hydrogen-slim
Echo “npx version $(npx —version)”
COPY index.html .
CMD npx http-server -p 8080

FROM node:hydrogen-slim
RUN echo "npx version $(npx —version)"
COPY index.html .
CMD npx http-server -p 8080

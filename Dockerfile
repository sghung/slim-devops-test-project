FROM node:alpine

WORKDIR "/app"

# Install app dependencies
COPY package.json /app/
RUN cd /app; npm install; npm prune --production

# Bundle app source
COPY . /app

ENV NODE_ENV production
ENV PORT 3000

# Testing commit again
EXPOSE 3000
CMD ["npm", "start"]

FROM node:22-alpine

WORKDIR /app

COPY package.json .

COPY yarn.lock .

RUN yarn install --frozen-lockfile

COPY . .

CMD yarn start

EXPOSE 3000
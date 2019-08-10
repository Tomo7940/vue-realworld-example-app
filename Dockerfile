FROM node:8

COPY package.json /app/

WORKDIR /app

RUN yarn install

COPY . .

RUN yarn build

CMD [ "yarn", "serve", "--port", "4000" ]

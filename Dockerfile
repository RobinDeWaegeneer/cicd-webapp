FROM node:18

WORKDIR /app

# RUN npm install -g yarn

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . /app

EXPOSE 3000

CMD ["yarn", "start"]
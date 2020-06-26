FROM node:14-alpine AS build

WORKDIR /usr/src/app

# Copy the package.json and yarn.json so we can do a yarn install.
COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

RUN yarn run build


# Create a new stage to bundle the build.
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

COPY --from=build /usr/src/app/dist ./dist
COPY --from=build /usr/src/app/node_modules ./node_modules

CMD [ "node", "dist/main.js" ]

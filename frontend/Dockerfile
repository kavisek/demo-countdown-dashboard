# Development Image:
# This is a devcontainer image for the developent
# environment.

FROM node:14 as build-stage

WORKDIR /app
COPY . .
RUN npm install
RUN npm run build


# Second Stage (Not Production Recommended)
FROM node:14
WORKDIR /app

COPY package.json ./

RUN npm install

COPY --from=build-stage /app/public /app/public
COPY --from=build-stage /app/src /app/src

EXPOSE 80 3000
ENTRYPOINT ["npm","start"]

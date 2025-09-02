ARG BASE_IMAGE=ghcr.io/kiogreo/container-registry
ARG NODE_ENV=development

FROM ${BASE_IMAGE}
WORKDIR /app
COPY . .
RUN npm ci
EXPOSE 3000
CMD ["node", "src/main.js"]

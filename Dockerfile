# -------- Stage 1 : Build --------
FROM node:22-alpine AS build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

# Build Nuxt
RUN npm run build

# -------- Stage 2 : Runtime --------
FROM node:22-alpine

WORKDIR /app

COPY --from=build /app/.output/ ./

ENV PORT=3000
ENV HOST=0.0.0.0

EXPOSE 3000

CMD ["node", "/app/server/index.mjs"]

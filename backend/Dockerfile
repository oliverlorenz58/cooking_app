FROM node:22-bookworm-slim

# Prisma braucht OpenSSL, um die passende Query-Engine zu wählen
RUN apt-get update \
  && apt-get install -y --no-install-recommends openssl \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY prisma ./prisma
COPY prisma.config.ts ./
COPY src ./src

# Prisma-Client für Linux im Container erzeugen. Die DATABASE_URL hier ist nur ein
# Platzhalter, weil prisma.config.ts sie verlangt; die echte kommt zur Laufzeit.
RUN DATABASE_URL="postgresql://build:build@localhost:5432/build" npx prisma generate \
  && npm prune --omit=dev

ENV NODE_ENV=production
USER node
EXPOSE 3000

CMD ["node", "src/server.js"]

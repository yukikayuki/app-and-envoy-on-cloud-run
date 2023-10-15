FROM oven/bun:1.0.6
WORKDIR /usr/src/app
COPY package.json ./
COPY bun.lockb ./
RUN bun install
COPY . .
EXPOSE 3000
CMD ["bun", "index.ts"]

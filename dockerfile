FROM node:18-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Dexxtex/xtrailer.git .

RUN npm install

EXPOSE 7020

CMD ["npm", "start"]

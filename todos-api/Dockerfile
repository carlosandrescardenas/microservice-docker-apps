FROM node:8-alpine

EXPOSE 8082

ENV TODO_API_PORT=8082
ENV JWT_SECRET=PRFT
ENV REDIS_HOST=https://rampup-as-redis.azurewebsites.net
ENV REDIS_PORT=6379
ENV REDIS_CHANNEL=log_channel
ENV ZIPKIN_URL=https://rampup-as-zipkin.azurewebsites.net/api/v2/spans

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

CMD ["sh", "-c", "npm start" ]
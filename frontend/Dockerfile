FROM node:8-alpine

EXPOSE 8080

ENV PORT=8080
ENV AUTH_API_ADDRESS=http://192.168.55.100:8081
ENV TODOS_API_ADDRESS=http://192.168.55.4:8082
ENV ZIPKIN_URL=http://192.168.55.8:9411/api/v2/spans

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .
RUN npm run build

CMD ["sh", "-c", "npm start" ]
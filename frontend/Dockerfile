FROM node:8-alpine

EXPOSE 8080

ENV PORT=8080
ENV AUTH_API_ADDRESS=https://rampup-as-auth-api.azurewebsites.net
ENV TODOS_API_ADDRESS=https://rampup-as-todos-api.azurewebsites.net
ENV ZIPKIN_URL=https://rampup-as-zipkin.azurewebsites.net/api/v2/spans

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .
RUN npm run build

CMD ["sh", "-c", "npm start" ]
FROM golang:1.9-alpine

EXPOSE 8081

ENV AUTH_API_PORT=8081
ENV USERS_API_ADDRESS=https://rampup-as-users-api.azurewebsites.net
ENV JWT_SECRET=PRFT
ENV ZIPKIN_URL=https://rampup-as-zipkin.azurewebsites.net/api/v2/spans

WORKDIR /go/src/app
RUN apk --no-cache add curl git && \
    curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

COPY . .
RUN dep ensure

RUN go build -o auth-api

CMD /go/src/app/auth-api

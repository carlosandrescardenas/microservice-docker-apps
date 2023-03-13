FROM python:3.6-alpine

ENV REDIS_HOST=https://rampup-as-redis.azurewebsites.net
ENV REDIS_PORT=6379
ENV REDIS_CHANNEL=log_channel
ENV ZIPKIN_URL=https://rampup-as-zipkin.azurewebsites.net/api/v2/spans

WORKDIR /usr/src/app
RUN apk add --no-cache build-base
COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY main.py .

CMD ["python3","-u","main.py"]
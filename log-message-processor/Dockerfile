FROM python:3.6-alpine

ENV REDIS_HOST=192.168.55.5
ENV REDIS_PORT=6379
ENV REDIS_CHANNEL=log_channel
ENV ZIPKIN_URL=http://192.168.55.8:9411/api/v1/spans

WORKDIR /usr/src/app
RUN apk add --no-cache build-base
COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY main.py .

CMD ["python3","-u","main.py"]
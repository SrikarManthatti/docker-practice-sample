FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /home/usr/pythonsample/

COPY requirements.txt ./requirements.txt

COPY entrypoint.sh ./entrypoint.sh

COPY ./scripts/kub_sample.py ./kub_sample.py

ENTRYPOINT [ "sh","./entrypoint.sh" ]

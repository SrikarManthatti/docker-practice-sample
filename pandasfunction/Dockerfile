FROM python:3.8-slim-buster

WORKDIR /home/usr/pythonsample/

COPY requirements.txt ./requirements.txt

RUN pip install --upgrade pip

RUN pip install -r ./requirements.txt

CMD [ "python","./scripts/sample.py" ]

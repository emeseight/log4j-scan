FROM python:3.11.0a5-alpine

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apk add gcc g++ make libffi-dev openssl-dev
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "log4j-scan.py" ]

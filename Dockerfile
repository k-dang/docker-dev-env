FROM python:3.6

RUN apt-get update

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# add environment variables
# debug mode for flask
ENV FLASK_ENV="development"

EXPOSE 3000

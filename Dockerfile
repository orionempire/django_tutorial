FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD ./docker/requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
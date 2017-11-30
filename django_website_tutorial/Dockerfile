FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN mkdir /config
WORKDIR /code
ADD docker /config/
RUN pip install -r /config/requirements.txt


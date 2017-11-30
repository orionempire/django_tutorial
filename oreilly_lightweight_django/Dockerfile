FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN mkdir /config
WORKDIR /code
ADD docker /config/
ADD chapter_1 /code/
RUN pip install -r /config/requirements.txt
CMD python hello.py runserver 0.0.0.0:8000



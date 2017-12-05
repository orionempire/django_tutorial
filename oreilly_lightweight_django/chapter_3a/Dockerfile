FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir work
WORKDIR /work
ADD . /work
RUN pip install -r requirements.txt
CMD python prototypes.py runserver 0.0.0.0:9000



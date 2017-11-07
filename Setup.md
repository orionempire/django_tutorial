# Django Tutorial 2

https://docs.docker.com/compose/django/
https://docs.djangoproject.com/en/1.11/intro/tutorial01/

    (*) -> run first time only
    U:admin
    P:qwerty123
    
```bash
alias db="docker-compose run web"
```

### Initialize Environment (*)
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip
```

### Initialize Cluster (*)
```bash
workon django_tutorial_3_7
pip install django
rm -fr ./database
mkdir database
cd application
db django-admin startproject django_tutorial .
db python manage.py startapp polls
#(*)
db python manage.py migrate 
db python manage.py makemigrations polls
db python manage.py sqlmigrate polls 0001
db python manage.py migrate
db python manage.py shell
#>>> 
from polls.models import Question, Choice
from django.utils import timezone
q = Question(question_text="What's up?", pub_date=timezone.now())
q.choice_set.create(choice_text='Not much', votes=0)
q.choice_set.create(choice_text='The sky', votes=0)
q.save()
#>>> 
```

### Run Cluster
```bash
docker-compose up -d
curl http://localhost:8000
```
[admin](http://127.0.0.1:8000/admin/)
[polls](http://127.0.0.1:8000/polls/)
[visualizer](http://127.0.0.1:8080)
```bash
docker-compose down
```

### Clean Up
```bash
docker rmi djangotutorial_web
mv database /tmp/delme; mkdir database
```

### Diagnostics
```bash
db python -m django --version
db bash

```
docker-compose restart web

#ADD ./application /code/
ENTRYPOINT [docker_entrypoint.py"]
ENTRYPOINT ["/config/docker_entrypoint.py"]

ADD ./docker/requirements.txt /code/

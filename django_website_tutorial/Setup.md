# Django Tutorial 4

https://docs.docker.com/compose/django/
https://docs.djangoproject.com/en/1.11/intro/tutorial04/

    (*) -> run first time only
    U:admin
    P:qwerty123
    
```bash
alias d-c="docker-compose"
alias d-r="docker-compose run"
alias d-w="docker-compose run web"
```

### Initialize Environment (*)
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip
pip install django
pip install psycopg2

```

### Initialize Cluster (*)
```bash
workon django_tutorial_3_7
rm -fr ./database
mkdir database
cd application
d-w django-admin startproject django_tutorial .
d-w python manage.py startapp polls
d-w python manage.py migrate
d-w python manage.py makemigrations polls
d-w python manage.py sqlmigrate polls 0001
d-w python manage.py migrate
d-w python manage.py shell
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
```bash
docker-compose down
```
### Clean Up
```bash
docker rmi djangotutorial_web
mv database /tmp/delme; mkdir database
# remove -> /etc/hosts -> 127.0.0.1	db
```

### Diagnostics
```bash
db python -m django --version
db bash

#Database
docker exec -it  djangotutorial_db_1 /bin/bash
psql -U postgres
#\l \dt \q
```

### Debug
```bash
docker stop djangotutorial_web_1
# add to /etc/hosts -> 127.0.0.1	db
# add to run profile -> runserver 0.0.0.0:8001

```


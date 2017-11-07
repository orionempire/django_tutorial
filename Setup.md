# Django Tutorial 2

    (*) -> run first time only
https://docs.docker.com/compose/django/
https://docs.djangoproject.com/en/1.11/intro/tutorial01/

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
django-admin startproject django_tutorial .
python manage.py startapp polls
docker-compose run web python manage.py migrate #(*)
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
mv database /tmp/delme; mkdier database
```

### Diagnostics
```bash
docker-compose run web python -m django --version
docker-compose run web /bin/bash
```
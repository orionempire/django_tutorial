#Django Tutorial 1
https://docs.docker.com/compose/django/
https://docs.djangoproject.com/en/1.11/intro/tutorial01/

### Initialize environment
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip
```
### Test Environment
```bash
docker-compose run web python -m django --version
```

### Build Cluster
```bash
docker-compose run web django-admin.py startproject django_tutorial application
```

### Run Cluster
```bash
docker-compose up -d
curl http://localhost:8000
docker-compose down
```

### Clean Up
```bash
#docker rm $(docker ps -a|grep django_tutorial|cut -d' ' -f1)
docker rmi djangotutorial_web
```

### Diagnostics
docker-compose run web /bin/bash

### Build image
#```bash
#workon django_tutorial_3_7
#docker build -t django_tutorial .
#docker-compose up
#```
https://docs.docker.com/compose/django/

Initialize environment
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip
```

Initial Build 
```bash
docker-compose run web django-admin.py startproject django_tutorial .
docker-compose run web python manage.py startapp poll .
```

Launch 
```bash
docker-compose up -d
docker-compose down
```

Diagnose
```bash
# Logs
docker logs `docker ps|grep djangotutorial_web|cut -d' ' -f1`
# Shell
docker exec -i -t `docker ps|grep djangotutorial_web|cut -d' ' -f1` /bin/bash
# Data
curl http://localhost:8000
```

Wipe Host
```bash
# Remove all containers from this machine
docker rm $(docker ps -a -q)
# Remove all images from this machine
docker rmi $(docker images -q)
```
https://docs.docker.com/compose/django/

U:admin
P:qwerty123

Initialize environment
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip
```

Initial Build 
```bash
workon django_tutorial_3_7
mkdir database
docker-compose run web django-admin.py startproject django_tutorial .
docker-compose run web python manage.py startapp poll ./polls #?
docker-compose run web python manage.py migrate
```

ReBuild
```bash
workon django_tutorial_3_7
rm -fr ./database
mkdir database
docker-compose up -d
docker ps --all
docker-compose run web python manage.py migrate
docker-compose down
```
Launch 
```bash
docker-compose up -d
curl http://localhost:8000
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
#Database
docker exec -i -t  djangotutorial_db_1 /bin/bash
psql -U postgres
#\l \dt \q
```

Wipe Host
```bash
# Remove all containers from this machine
docker rm $(docker ps -a -q)
# Remove all images from this machine
docker rmi $(docker images -q)
```

[admin](http://127.0.0.1:8000/admin/)
[polls](http://127.0.0.1:8000/polls/)

visualizer:
    image: dockersamples/visualizer:stable
    ports:
      - "8080:8080"
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock"
    deploy:
      placement:
        constraints: [node.role == manager]
    networks:
      - webnet
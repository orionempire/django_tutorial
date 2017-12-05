https://github.com/lightweightdjango/examples

### Initialize Environment
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip

```

### Initialize & start
```bash
./launch.sh
```

[access](http://127.0.0.1:8000)

### Kill
```bash
docker kill `docker ps|grep oreilly_lightweight_django|cut -d' ' -f1`
```

### Diagnose
```bash
docker exec -it `docker ps|grep oreilly_lightweight_django_XX|cut -d' ' -f1` bash
```

### Cleanup
docker rm $(docker images |grep oreilly_lightweight_djang)
docker rm $(docker ps -a -q)           # Remove all containers from this machine
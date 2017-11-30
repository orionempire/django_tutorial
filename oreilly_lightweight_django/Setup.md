https://github.com/lightweightdjango/examples

### Initialize Environment
```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip

```

### Initialize
```bash
workon django_tutorial_3_7
docker build -t oreilly_lightweight_django_01 .
```


### Start
```bash
docker build -t oreilly_lightweight_django_01 .; docker run -p 8000:8000  oreilly_lightweight_django_01
```

[access](http://127.0.0.1:8000)

### Kill
```bash
docker kill `docker ps|grep oreilly_lightweight_django_01|cut -d' ' -f1`
```

### Diagnose
```bash
docker exec -it `docker ps|grep oreilly_lightweight_django_01|cut -d' ' -f1` bash
```
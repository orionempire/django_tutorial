```bash
rmvirtualenv django_tutorial_3_7
mkvirtualenv --python=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 django_tutorial_3_7
sudo easy_install pip
pip install --upgrade pip
```

```bash
docker-compose run web django-admin.py startproject django_tutorial .
docker-compose up -d
docker-compose down
```
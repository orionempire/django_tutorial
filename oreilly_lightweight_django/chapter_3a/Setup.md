```bash
launch.sh
curl 0.0.0.0:9000
docker kill `docker ps|grep oreilly_lightweight_django_|cut -d' ' -f1`
```
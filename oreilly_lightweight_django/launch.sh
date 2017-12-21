#!/usr/bin/env bash

CURR_EXAMPLE="4a"

workon django_tutorial_3_7
docker build -t oreilly_lightweight_django_$CURR_EXAMPLE ./chapter_$CURR_EXAMPLE/.

docker run -p 9000:9000  oreilly_lightweight_django_$CURR_EXAMPLE


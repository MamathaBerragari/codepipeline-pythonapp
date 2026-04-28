#!/bin/bash
set -e

docker stop flask-app || true
docker rm flask-app || true

docker pull mamathaberragari/simple-python-flask-app:latest

docker run -d -p 5000:5000 --name flask-app mamathaberragari/simple-python-flask-app

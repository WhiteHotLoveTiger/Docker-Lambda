# Docker-Lambda
Run basic docker images on AWS Lambda

Although we can run regular, full docker, there is a smaller project called udocker which allows us to run simple docker files without root access.

In this simple proof of concept, we download udocker, which runs as a single python2 file. We use it to download the latest ubuntu docker image from docker hub, and then run the image.

Note that udocker runs on Python 2, so you'll want to pick Python2.7 for your Lambda runtime.

This project borrows heavily from https://github.com/vladgolubev/docker-in-aws-lambda

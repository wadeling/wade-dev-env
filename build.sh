#!/bin/bash

tag=20.04-clamav
image_name="wade23/ubuntu-dev:$tag"

docker build -t $image_name .

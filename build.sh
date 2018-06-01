#!/bin/bash
# build base docker image first
docker build -t rajeshd2090/storage_base_image:latest -f Dockerfile_Base .
#Build final image which inturn uses base image.
# Here layers of base image will be used by final images and add only one layer of its one
docker build -t rajeshd2090/storage_final_image:latest -f Dockerfile_Final .


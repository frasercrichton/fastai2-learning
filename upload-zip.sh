#!/bin/bash

zip -r upload/drones.zip drone/dataset

docker run --rm -ti --mount src="$(pwd)",target=/data,type=bind --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil rsync -a public-read data/upload gs://forensic-architecture-machine-learning/drone

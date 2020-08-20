#!/bin/bash

docker run --rm -ti --mount src="$(pwd)",target=/data,type=bind --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil rsync -r /data/drone gs://forensic-architecture-machine-learning/drone

#!/bin/bash

TYPE=drones
# zip -r upload/drones.zip drone/dataset

zip -r upload/${TYPE}.zip data/${TYPE}

docker run --rm -ti --mount src="$(pwd)",target=/project,type=bind --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil rsync project/upload gs://forensic-architecture-machine-learning/${TYPE}

# docker run --rm -ti --mount src="$(pwd)",target=/project,type=bind --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil acl get gs://forensic-architecture-machine-learning/${TYPE}/${TYPE}.zip > acl.txt

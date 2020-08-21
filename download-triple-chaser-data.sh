# docker run --rm -ti --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil ls -r gs://safariland-element/datasets/canisters

docker run --rm -ti --mount src="$(pwd)",target=/data,type=bind --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil -m cp -r gs://safariland-element/datasets/canisters /data/download

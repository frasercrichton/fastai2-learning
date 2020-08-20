# Fastai 2 Learning

Me working through this:

https://github.com/fastai/fastai2



Lets go slow and copy one by one for now.

## Video Course

Watching this:
Zachary Mueller - A walk with fastai2

https://www.youtube.com/watch?v=bw4PRyxa-y4&list=PLFDkaGxp5BXDvj3oHoKDgEcH73Aze-eET

Which is really just confusing things at the moment tbh.

Until the official course, this:

https://dev.fast.ai/

starts up in August.

Here's the old course videos:

https://course.fast.ai/videos

And here's the book:

[Deep Learning for Coders with fastai and PyTorch: AI Applications Without a PhD](https://www.amazon.com/Deep-Learning-Coders-fastai-PyTorch/dp/1492045527)

https://book.fast.ai/

https://github.com/fastai/fastbook

# Data

I've copied FA's triple chaser data to a Google Cloud Bucket. The images are already labelled.

## Getting drones

`fcd -c GOOGLE -m 100 drones.csv`

# Dockerised

Because Python on Mac . . .

https://github.com/GoogleCloudPlatform/cloud-sdk-docker
git 

```
docker pull gcr.io/google.com/cloudsdktool/cloud-sdk:latest
docker run -ti --name gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gcloud auth login
````

docker run --rm -ti --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gcloud compute instances list --project forensic-265906

docker run --rm -ti --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil ls -p forensic-265906


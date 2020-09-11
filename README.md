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

Because Python on Mac I need Docker . . .

Use a Google Cloud docker image from here:

https://github.com/GoogleCloudPlatform/cloud-sdk-docker

Run this

```
docker pull gcr.io/google.com/cloudsdktool/cloud-sdk:latest
````

Then you can run against the docker image with your local credentials.

## List the data in a remote bucket

```
docker run --rm -ti --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gsutil ls gs://safariland-element/datasets
```

## Copy the data

```
gsutil cp -r gs://safariland-element/datasets gs://forensic-architecture-machine-learning
```

## Todo

https://stackoverflow.com/questions/59508225/is-it-possible-to-connect-vscode-on-a-local-machine-with-google-colab-the-fre
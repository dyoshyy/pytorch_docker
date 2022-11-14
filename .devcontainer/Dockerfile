FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-runtime

# install packages
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		git \
	&& apt-get -y clean \
	&& rm -rf /var/lib/apt/lists/*

FROM nvidia/cuda:12.2.2-base-ubuntu22.04

# default shell
ENV SHELL /bin/bash

# Create the user
ARG USERNAME=pythonista
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
	&& useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
	&& apt-get update \
	&& apt-get install -y \
	sudo \
	wget \
	curl \
	git \
	python3 \
	&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
	&& chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

# install poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH=$PATH:/home/$USERNAME/.local/bin

RUN poetry config virtualenvs.in-project true

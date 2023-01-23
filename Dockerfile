FROM ruby:3.0
RUN apt-get update && apt-get install --no-install-recommends -y python3 python3-dev python3-pip \
    && pip3 install fastcore fastai ipywidgets
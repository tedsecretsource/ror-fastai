# ror-fastai
Alpine-based Ruby on Rails server that includes fastai

## Why?

I have very little experience in Ruby on Rails and machine learning (Fastai) and yet, we're using both of these technologies as part of a project at work. As I work on a Mac M1 machine and deploy to Heroku, I needed to build a Docker image that would work (**natively**) on both platforms.

## How

I started with a base ruby machine that is cross-platform and then installed python and fastai on top of that.

## Issues

The only real issue I had was installing SciPy and pyarrow, dependencies of fastai. I had to build SciPy from source. There is [an issue](https://github.com/apache/arrow/issues/14920) in pyarrow that requires you also make it from source.

M1 = linux/arm64 or linux/arm64/v8 (the last bit is not strictly necessary)

## References

* [Crucially helpful](https://www.docker.com/blog/multi-arch-images/)
* [Building SciPy from source](https://docs.scipy.org/doc//scipy-1.4.1/reference/building/linux.html)
* [Building pyarrow from source](https://arrow.apache.org/docs/developers/python.html#python-development)
* [How to Build Multi-Arch Docker Images for MacBook M1](https://raynix.info/archives/4305) (includes very helpful explanation of some docker environment variables TARGETOS, TARGETARCH, et al and clarifies that `arm64` is the same fucking thing as `aarch64`)
* [Publishing a docker image to dockerhub via a github action](https://medium.com/platformer-blog/lets-publish-a-docker-image-to-docker-hub-using-a-github-action-f0b17e5cceb3)
* [Using custom Dockerfiles with docker-compose](https://medium.com/analytics-vidhya/how-to-understand-building-images-with-docker-compose-24cbdbc0641f)

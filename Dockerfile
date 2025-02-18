FROM alpine:3.21.3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c AS chromaprint
RUN apk add --update --no-cache \
  cmake \
  ffmpeg-dev \
  g++ \
  gcc \
  git \
  make \
  && git clone https://github.com/acoustid/chromaprint.git \
  /tmp/chromaprint
WORKDIR /tmp/chromaprint
RUN cmake \
    -DBUILD_TOOLS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX:PATH=/tmp/build . \
  && make \
  && make install

FROM python:3.12.8-alpine3.20@sha256:bb94273467caf397de28b4e6dd09ca4a2dd1b53fa9b130d5b2c7c82719258356 AS poetry
ENV POETRY_VERSION=1.8.5 \
    PIP_DISABLE_PIP_VERSION_CHECK=on
WORKDIR /app
RUN apk add --update --no-cache \
    gcc \
    libffi-dev \
    musl-dev \
  && pip install poetry==${POETRY_VERSION}
COPY poetry.lock poetry.toml pyproject.toml /app/
RUN poetry export --without-hashes --format requirements.txt --output requirements.txt

FROM python:3.12.8-alpine3.20@sha256:bb94273467caf397de28b4e6dd09ca4a2dd1b53fa9b130d5b2c7c82719258356 AS runtime
ENV PIP_DISABLE_PIP_VERSION_CHECK=on \
    EDITOR=vim \
    BEETSDIR=/config
WORKDIR /app
COPY --from=chromaprint /tmp/build /usr
COPY --from=poetry /app/requirements.txt /app
RUN apk add --update --no-cache \
    ffmpeg \
    ffmpeg-libs \
    git \
    gstreamer \
    gst-plugins-good \
    py3-setuptools-rust \
    vim \
  && pip install --no-cache-dir -r requirements.txt \
  && mkdir /config \
  && rm -rf \
    /tmp/* \
    /var/tmp/* \
    /var/cache/apk/*

VOLUME [ "/config", "/music", "/working" ]
WORKDIR /working
ENTRYPOINT [ "/usr/local/bin/beet" ]
CMD [ "help" ]

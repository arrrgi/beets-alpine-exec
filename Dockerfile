FROM alpine:3.20.3@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d AS chromaprint
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

FROM python:3.13.0-alpine3.20@sha256:c38ead8bcf521573dad837d7ecfdebbc87792202e89953ba8b2b83a9c5a520b6 AS poetry
ENV POETRY_VERSION=1.8.3 \
    PIP_DISABLE_PIP_VERSION_CHECK=on
WORKDIR /app
RUN apk add --update --no-cache \
    gcc \
    libffi-dev \
    musl-dev \
  && pip install poetry==${POETRY_VERSION}
COPY poetry.lock poetry.toml pyproject.toml /app/
RUN poetry export --without-hashes --format requirements.txt --output requirements.txt

FROM python:3.13.0-alpine3.20@sha256:c38ead8bcf521573dad837d7ecfdebbc87792202e89953ba8b2b83a9c5a520b6 AS runtime
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

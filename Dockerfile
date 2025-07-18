FROM alpine:3.21.4@sha256:b6a6be0ff92ab6db8acd94f5d1b7a6c2f0f5d10ce3c24af348d333ac6da80685 AS chromaprint
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

FROM ghcr.io/astral-sh/uv:python3.13-alpine@sha256:e393887758d38574b3f358d661e1ce24b716d45e8b7cacaa01b06f9b5c246d6d AS uv
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
WORKDIR /app
RUN apk add --update --no-cache \
    gcc \
    libffi-dev \
    musl-dev
COPY pyproject.toml uv.lock /app/
RUN uv export --no-hashes --no-dev --format=requirements-txt --output-file=requirements.txt

FROM python:3.13.3-alpine
ENV PIP_DISABLE_PIP_VERSION_CHECK=on \
    EDITOR=vim \
    BEETSDIR=/config
WORKDIR /app
COPY --from=chromaprint /tmp/build /usr
COPY --from=uv /app/requirements.txt /app
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

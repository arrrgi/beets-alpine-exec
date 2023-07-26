FROM alpine:3.17.4@sha256:e95676db9e4a4f16f6cc01a8915368f82b018cc07aba951c1bd1db586c081388 AS chromaprint
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
    -DCMAKE_INSTALL_PREFIX:PATH=/tmp/build \
  && make \
  && make install

FROM python:3.10.10-alpine3.17 as poetry
ENV POETRY_VERSION=1.5.1 \
    PIP_DISABLE_PIP_VERSION_CHECK=on
WORKDIR /app
RUN apk add --update --no-cache \
    gcc \
    libffi-dev \
    musl-dev \
  && pip install poetry==${POETRY_VERSION}
COPY poetry.lock poetry.toml pyproject.toml /app/
RUN poetry export --format requirements.txt --output requirements.txt

FROM python:3.10.10-alpine3.17 as runtime
ENV PIP_DISABLE_PIP_VERSION_CHECK=on \
    EDITOR=vim \
    BEETSDIR=/config
WORKDIR /app
COPY --from=chromaprint /tmp/chromaprint /usr
COPY --from=poetry /app/requirements.txt /app
RUN apk add --update --no-cache \
    ffmpeg \
    ffmpeg-libs \
    gstreamer \
    gst-plugins-good \
    vim \
  && pip install --no-cache-dir -r requirements.txt \
  && mkdir /config \
  && rm -rf \
    /tmp/* \
    /var/tmp/* \
    /var/cache/apk/*

VOLUME [ "/config", "/music", "/working" ]
WORKDIR /working
ENTRYPOINT [ "/usr/bin/beet" ]
CMD [ "help" ]

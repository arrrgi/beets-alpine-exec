FROM alpine:3.20.2@sha256:0a4eaa0eecf5f8c050e5bba433f58c052be7587ee8af3e8b3910ef9ab5fbe9f5 AS chromaprint
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

FROM python:3.12.4-alpine3.20@sha256:7f15e22f496c65cffbbac5e30e7e98d60f3e3b9cc5ee5d51cf3c55ed604787c8 AS poetry
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

FROM python:3.12.4-alpine3.20@sha256:7f15e22f496c65cffbbac5e30e7e98d60f3e3b9cc5ee5d51cf3c55ed604787c8 AS runtime
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

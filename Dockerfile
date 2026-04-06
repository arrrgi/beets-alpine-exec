FROM alpine:3.23.3@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659 AS chromaprint
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

FROM ghcr.io/astral-sh/uv:python3.13-alpine3.23
ENV UV_SYSTEM_PYTHON=1 \
    EDITOR=vim \
    BEETSDIR=/config
WORKDIR /app
COPY --from=chromaprint /tmp/build /usr
COPY pyproject.toml uv.lock /app/
RUN apk add --update --no-cache \
    ffmpeg \
    ffmpeg-libs \
    g++ \
    gcc \
    git \
    gstreamer \
    gst-plugins-good \
    libffi-dev \
    musl-dev \
    vim \
  && uv sync --no-dev --frozen --no-install-project \
  && mkdir /config \
  && rm -rf \
    /tmp/* \
    /var/tmp/* \
    /var/cache/apk/*

VOLUME [ "/config", "/music", "/working" ]
WORKDIR /working
ENTRYPOINT [ "/usr/local/bin/beet" ]
CMD [ "help" ]

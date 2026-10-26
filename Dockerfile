FROM alpine:3.23.7@sha256:ff7f0c727dd796aa36787bfcd9a64bf35a6ce72a73451b3359fde849b6703d63 AS chromaprint
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

FROM ghcr.io/astral-sh/uv:python3.13-alpine3.23@sha256:b3590cdf03fc891859065e0b4878f88bb7570a8023b209b6d7783770e10d13fa
ENV UV_SYSTEM_PYTHON=1 \
    EDITOR=vim \
    BEETSDIR=/config \
    PATH="/app/.venv/bin:$PATH"
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
ENTRYPOINT [ "/app/.venv/bin/beet" ]
CMD [ "help" ]

FROM docker:dind

RUN apk update
RUN apk add \
  python3 \
  python3-dev \
  py3-openssl \
  py3-pip \
  gcc \
  libc-dev \
  bash \
  rsync

RUN pip3 \
  install \
  --break-system-packages \
  --upgrade pip

RUN pip3 install \
  --break-system-packages \
  ansible \
  ansible-lint \
  yamllint \
  molecule[docker] \
  molecule-plugins[docker]

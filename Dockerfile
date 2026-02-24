FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y unzip curl bash nginx ca-certificates \
    python3 python3-venv python3-pip \
    vim-tiny \
    et-tools iproute2 iputils-ping dnsutils \
    procps lsof less \
    && rm -rf /var/lib/apt/lists/*

 RUN python3 -m venv /opt/venv \
  && /opt/venv/bin/python -m pip install -U pip \
  && /opt/venv/bin/python -m pip install --no-cache-dir telethon tgeraser

ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /opt/data

EXPOSE 80

CMD ["/bin/bash"]
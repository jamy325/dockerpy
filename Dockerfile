FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y unzip curl bash nginx ca-certificates \
     python3 python3-venv python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/data

EXPOSE 80

CMD ["/bin/bash"]
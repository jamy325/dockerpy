FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y unzip curl bash nginx ca-certificates python\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/data

EXPOSE 80

CMD ["/bin/bash"]
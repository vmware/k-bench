# Use the official Nginx base image
FROM nginx:latest

# Install iperf3
RUN apt-get update && \
    apt-get install -y iperf3 && \
    apt-get install -y procps && \
    apt-get install -y net-tools && \
    apt-get install -y iputils-ping && \
    apt-get install -y qperf && \
    apt-get install -y wget gawk make && \
    apt-get install -y gcc libpath-tiny-perl && \
    # Clean up apt cache to reduce image size
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# Install qperf
RUN cd /tmp && \
    wget https://www.openfabrics.org/downloads/qperf/qperf-0.4.9.tar.gz && \
    tar xvf qperf-0.4.9.tar.gz && \
    cd qperf-0.4.9 && \
    ./configure && \
    make
CMD ["/bin/sh","-c","sleep infinity"]

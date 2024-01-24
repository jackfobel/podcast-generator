FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install pyYAML

# Copy feed.py into /user/bin folder
COPY feed.py /usr/bin/feed.py

# Copy new file
COPY entrypoint.sh /entrypoint.sh

# Run
ENTRYPOINT [ "/entrypoint.sh" ]

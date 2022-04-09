#########################################
# Build stage
#########################################
FROM arevindh/pihole:latest

RUN apt-get update && \
    apt-get install -y python3-minimal && \
    curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | /usr/bin/python3 && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

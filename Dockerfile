#########################################
# Build stage
#########################################
FROM arevindh/pihole:latest
COPY speedtest /etc/cron.d/speedtest

RUN apt-get update && \
    apt-get install -y python3-minimal && \
    curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | /usr/bin/python3 && \
    ln -s /usr/bin/speedtest //usr/bin/speedtest-cli && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

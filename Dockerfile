#########################################
# Build stage
#########################################
#FROM pihole/pihole:latest
FROM arevindh/pihole:latest

RUN apt-get update && \
    apt-get install -y python3-minimal nano wget gnupg && \
    curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | /usr/bin/python3 && \
    ln -s /usr/bin/speedtest /usr/bin/speedtest-cli

#COPY mod.sh /mod.sh

#RUN bash /mod.sh
RUN rm -rf /var/cache/apt/archives /var/lib/apt/lists/*


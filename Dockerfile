#########################################
# Build stage
#########################################
FROM arevindh/pihole

RUN curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | sudo python3 && \
  rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

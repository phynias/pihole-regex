#########################################
# Build stage
#########################################
FROM pihole/pihole:latest
#FROM arevindh/pihole:latest

RUN apk add --no-cache python3 py3-pip
RUN apk add py3-colorama py3-tabulate py3-requests

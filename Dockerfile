# Debian jessie based container to support sending of passive alerts
# to Nagios servers.

FROM debian:stretch-slim
LABEL maintainer dockerhub216@macrotex.net

# Update the apt package cache.
RUN apt-get update

# Add the nsca package
RUN DEBIAN_FRONTEND=noninteractive apt-get --quiet --assume-yes install nsca


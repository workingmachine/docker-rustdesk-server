FROM rustdesk/rustdesk-server:latest

# set timezone
ENV TZ=Europe/Vienna
RUN set -ex; \
    ln --symbolic --no-dereference --force /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone

RUN set -ex; \
    \
    apt-get update --yes --quiet; \
    apt-get install --yes --no-install-recommends \
        tzdata \
    ; \
    apt-get upgrade --yes --quiet; \
    apt-get auto-remove --yes --quiet; \
    rm -rf /var/lib/apt/lists/*

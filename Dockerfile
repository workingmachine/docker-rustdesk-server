FROM rustdesk/rustdesk-server:latest
RUN set -ex; \
    \
    apt-get update -y -q; \
    apt-get upgrade -y -q; \
    apt-get auto-remove -y -q; \
    rm -rf /var/lib/apt/lists/*

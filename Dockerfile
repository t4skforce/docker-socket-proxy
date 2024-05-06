FROM haproxy:alpine

EXPOSE 2375
ENV LOG_LEVEL=info \
    BIND=":2375" \
    SOCKET_PATH=/var/run/docker.sock \
    POST=0 \
    EVENTS=1 \
    PING=1 \
    VERSION=1 \
    ALLOW_RESTARTS=0 \
    ALLOW_STOP=0 \
    ALLOW_START=0 \
    AUTH=0 \
    BUILD=0 \
    COMMIT=0 \
    CONFIGS=0 \
    CONTAINERS=0 \
    DISABLE_IPV6=0 \
    DISTRIBUTION=0 \
    EXEC=0 \
    GRPC=0 \
    IMAGES=0 \
    INFO=0 \
    NETWORKS=0 \
    NODES=0 \
    PLUGINS=0 \
    SECRETS=0 \
    SERVICES=0 \
    SESSION=0 \
    SWARM=0 \
    SYSTEM=0 \
    TASKS=0 \
    VOLUMES=0

COPY docker-entrypoint.sh /usr/local/bin/
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY verify.lua /usr/local/etc/haproxy/verify.lua

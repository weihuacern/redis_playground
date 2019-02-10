ARG REDIS_VERSION
FROM redis:${REDIS_VERSION}
COPY redis.conf /etc/redis/redis.conf
RUN redis-server /etc/redis/redis.conf

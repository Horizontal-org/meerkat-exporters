VERSION=v0.39.3

sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --publish=9001:8080 \
  --detach=true \
  --name=cadvisor \
  gcr.io/cadvisor/cadvisor:$VERSION
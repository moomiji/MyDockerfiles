#Usage
```
docker run -d --name casaos --privileged --network=host \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /DATA:/DATA \
    -e HttpPort=11420 \
    casaos:latest
```

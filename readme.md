# Dockerizing srcd


```bash
git clone https://github.com/bhargav3/docker-srcd
docker build -t srcd .
docker run -v /var/run/docker.sock:/var/run/docker.sock --network host -v /container/directory:/host/directory/ -it srcd arg1 arg2 ...
```

# Dockerizing srcd


```bash
docker run -v /var/run/docker.sock:/var/run/docker.sock --network host -v $HOME/Projects:/Users/bhargav/Projects/ -it srcd bash
```

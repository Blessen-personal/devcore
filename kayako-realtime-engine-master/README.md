## Kayako Realtime Engine

### Installation

#### Docker

```bash
docker build -t kayako-realtime-engine --build-arg GDEV_PASSWORD=EALhMiuJ8Ry .
docker run -it --name="kre" -e KRE_ENV=vagrant -e CONSUL_HOST='http://localhost:8500/' -p 8102:8102 kayako-realtime-engine
```

### Test
```
 docker exec kayako-realtime-engine bash -c 'cd /code && mix test'

```

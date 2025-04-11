# Personal v1

Homepage containing links and short bio.

Available make commands:

```bash
templ       run hot-reloading templ dev server
tailwind    run hot-reloading tailwind css server
clean       delete generated files
build       build all project files for deployment
```

How to build and deploy new code changes:

```bash
make build

# set this to vm ip
export LINODE=
scp \
    docker-compose.yaml \
    personal-v1.tar \
    root@${LINODE}:/root/

ssh $LINODE
cat personal-v1.tar | docker load
```

To obtain or renew ssl certs, see:
* https://github.com/peteli3/certbot

Commands for operation and monitoring:

```bash
docker compose up --detach
docker compose down
docker compose ls
docker compose logs -f nginx
docker compose logs -f personal
```

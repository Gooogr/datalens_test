# datalens_test


## Set up process

### VPS

add .env to shell session
```bash
set -o allexport
source .env
set +o allexport
```

disable IPv6 for docker hub connection
[How to disable IPv6 for Docker pulling](https://github.com/docker/hub-feedback/issues/2421#issuecomment-2491140211)

set up app
```bash
docker compose up --build
```

check that table exists from local host
```bash
curl "http://localhost:8123/?user=${CLICKHOUSE_USER}&password=${CLICKHOUSE_PASSWORD}&database=${CLICKHOUSE_DB}" \
  --data-binary 'SELECT * FROM hello FORMAT Pretty'
```

### Datalens

[DataLens](https://datalens.yandex.cloud/?skipPromo=true&utm_referrer=https%3A%2F%2Fdatalens.yandex.cloud%2F)


- Use 8123 port for connection 
- Turn off TLS in advanced connector config (use HTTP)

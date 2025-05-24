# datalens_test

add .env to shell session
```bash
set -o allexport
source .env
set +o allexport
```


```bash
curl "http://localhost:8123/?user=${CLICKHOUSE_USER}&password=${CLICKHOUSE_PASSWORD}&database=${CLICKHOUSE_DB}" \
  --data-binary 'SELECT * FROM hello FORMAT Pretty'
```
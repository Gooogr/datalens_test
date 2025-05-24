CREATE DATABASE IF NOT EXISTS test;

CREATE TABLE IF NOT EXISTS test.hello
(
    id UInt32,
    msg String
)
ENGINE = MergeTree()
ORDER BY id;

INSERT INTO test.hello VALUES (1, 'Hello'), (2, 'ClickHouse'), (3, 'from Docker');

FROM debian:bullseye

COPY bug.sql .
COPY london.json .

RUN apt-get update && apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://github.com/duckdb/duckdb/releases/download/v0.9.1/duckdb_cli-linux-amd64.zip && \
    unzip duckdb_cli-linux-amd64.zip && mv duckdb /usr/bin && \
    rm -rf duckdb_cli-linux-amd64.zip
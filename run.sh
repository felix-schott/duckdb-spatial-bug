#!/usr/bin/env bash

docker inspect --type=image test-duckdb &> /dev/null || docker build -t test-duckdb .
docker run test-duckdb bash -c 'duckdb < bug.sql'
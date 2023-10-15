## Description

Minimal example to reproduce a suspected bug in the "spatial" [DuckDB extension](https://github.com/duckdblabs/duckdb_spatial) that occurs in Linux environments.

To reproduce, run `bash run.sh`. A Dockerfile with Debian Bullseye base image with be built that contains an installation of DuckDB 0.9.1. It then executes `bug.sql` (simple script that loads `london.json` and exports to Shapefile) and exits with 
> Error: near line 6: IO Error: Could not write file "output.dbf": Bad file descriptor
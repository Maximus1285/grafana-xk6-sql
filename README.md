# xk6-sql Docker

### This image contains a newly built k6 binary that includes `xk6-sql` module ready for you to use it. For reference about how to import and use `k6/x/sql` module, you can take a look at  [Import SQL module](https://k6.io/blog/load-testing-sql-databases-with-k6/#import-sql-module)

### This image also includes a Volume on `/home/k6` directory of the container.

## Examples on how to use it
#### Running a docker container

$ docker container run -it -v /path/to/k6-script/:/home/k6 msanabria/grafana-xk6-sql run k6-script/tests/script.js

#### Using docker-compose
```yml
version: '3.4'

services:
  k6:
    image: msanabria/grafana-xk6-sql:1.0.0
    command: k6 run k6-tests/script.js
    volumes:
      - /path/to/k6-script:/home/k6/k6-script
```

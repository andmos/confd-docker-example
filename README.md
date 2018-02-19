# confd-docker-example
Simple example on how to use [confd](https://github.com/kelseyhightower/confd) with Docker containers.

This example shows how to use the `env` backend for confd to template config files with environment variables straight from the Docker CLI. 

```
docker build -t confd-example .

docker run -e Foo=bar -e Hello=world -it confd-example
```

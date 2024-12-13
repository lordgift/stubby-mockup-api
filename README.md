# stubby-mockup-api

Simple create you own API mockup hosting. That operated by [Stubby4j](https://stubby4j.com/).


## Prerequisite

Easiest way, please use [Docker Desktop](https://www.docker.com/products/docker-desktop/) for development. This project contains `Dockerfile` that already config for stubby.

---

## Setup in 3-step

#### step 1:

config API spec in `response/stubs.yaml`.

#### step 2: 

mock json response in `/response/json` directory.

#### step 3: 

start your docker compose.

---

## Test your mockup

- Execute your API to get stubbed response with hostname http://localhost:8882/ following with configured stubs.
- The admin portal also available here. [http://localhost:8889/status](http://localhost:8889/status)

```
curl --location --request POST 'http://localhost:8882/test'
```
----

## Ngrok also available

For expose to internet, I also provide it with Ngrok. Please update `<your-authtoken>` in [ngrok.yaml](./ngrok.yaml).

please visit http://localhost:4040 to see ngrok domains for stubby admin portal and mockup api.


```
curl --location --request POST 'https://<random-subdomain>.ngrok-free.app'
```


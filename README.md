# stubby-mockup-api

simple create you own API mockup hosting.


## Prerequisite

Easiest way, please use Docker Desktop for development mode.


## Setup in 3-step

**step 1** config API spec in `response/stubs.yaml`.

**step 2** mock json response in `/response/json` directory.

**step 3** start your docker image.


## Test your mockup

- Execute your API to get stubbed response with hostname http://localhost:8882/ such as http://localhost:8882/test.
- The admin portal also available here. [http://localhost:8889/status](http://localhost:8889/status)


example.

```
curl --location --request POST 'http://localhost:8882/test'
```



----
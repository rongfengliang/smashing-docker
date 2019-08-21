
#  smashing docker image && basic demo

## How to Running

* build image

```code
docker-compose build smashing
```

* Running demo

```code
docker-compose up -d dash
```

* View demo dashboard

```code
open http://localhost:3030
```

## Run with builded docker image

* Base image

```code
dalongrong/smashing
```

* Useage

```code
FROM dalongrong/smashing
COPY . /app
RUN bundle
EXPOSE 3030
ENTRYPOINT [ "smashing","start" ]
```


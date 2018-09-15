## Commands

```
docker build -t wearetherock/zeit-now:latest .
docker-compose down
docker-compose up

docker build -t wearetherock/hello-world -f Dockerfile.HelloWorld .
docker images | grep hello-world

docker images | grep zeit-now
docker images | grep alpine


docker history microsoft/dotnet:2.1-aspnetcore-runtime-alpine
docker inspect microsoft/dotnet:2.1-aspnetcore-runtime-alpine
docker history  --help

docker history microsoft/dotnet:2.1-aspnetcore-runtime-alpine -H


dotnet publish src/ZeitNow -c Release
ls src/ZeitNow/bin/Release/netcoreapp2.1/publish
```

## Now

```
now
```
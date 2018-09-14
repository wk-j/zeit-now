FROM microsoft/dotnet:2.1-sdk-alpine as build
WORKDIR /app

COPY src/ZeitNow/ZeitNow.csproj .
RUN dotnet restore

COPY src src
RUN dotnet build src/ZeitNow

FROM build as publish
WORKDIR /app
RUN dotnet publish src/ZeitNow -c Release -o /app

FROM microsoft/dotnet:2.1-aspnetcore-runtime-alpine AS runtime
ENV DOTNET_USE_POLLING_FILE_WATCHER=true
WORKDIR /app
COPY --from=publish /app .
RUN dotnet --info
ENTRYPOINT ["dotnet", "ZeitNow.dll"]
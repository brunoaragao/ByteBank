FROM mcr.microsoft.com/dotnet/sdk:7.0 as build-env
WORKDIR /src
COPY src/ByteBank.Api/ByteBank.Api.csproj src/ByteBank.Api/
COPY src/ByteBank.Infrastructure/ByteBank.Infrastructure.csproj src/ByteBank.Infrastructure/
COPY src/ByteBank.Application/ByteBank.Application.csproj src/ByteBank.Application/
COPY src/ByteBank.Domain/ByteBank.Domain.csproj src/ByteBank.Domain/
RUN dotnet restore src/ByteBank.Api/ByteBank.Api.csproj
COPY . .
RUN dotnet publish src/ByteBank.Api/ByteBank.Api.csproj -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build-env /app .
EXPOSE 80
ENTRYPOINT ["dotnet", "ByteBank.Api.dll"]
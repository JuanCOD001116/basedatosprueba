FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Admin123!

CMD ["/opt/mssql/bin/sqlservr"]

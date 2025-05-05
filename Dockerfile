FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Admin123!

# Copiar script de inicialización (ver más abajo)
COPY init.sql /init.sql

# Ejecutar SQL Server y luego crear la base de datos
CMD /bin/bash -c "/opt/mssql/bin/sqlservr & sleep 20 && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Admin123! -i /init.sql && wait"

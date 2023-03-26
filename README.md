## Todo API with ASP.NET Core
This is a .NET Core Web API to manage a simple TODO application
The API contains endpoints that allow users to create, retrieve, update, and delete TODO items

## Prerequisites
Microsoft Visual Studio Community 2022 (64-bit) Version 17.5.1
SQL Server Management Studio 19.0.2

### .NET
[Install .NET 7](https://dotnet.microsoft.com/en-us/download)

### Database
SQL Server (MSSQLSERVER)

### Running the application
1. Clone source from Github repository: https://github.com/trueanh/TodoApi.git
2. Create a local database with SQL Server Management Studio (DB Create Query included in source: DbScript/TodoApi.sql) then config TodoDb connection string in appsettings.json
3. Open Project's source with Visual Studio and run the application (F5 or Ctrl + F5)

### Using the API standalone
For testing the API, make requests to various endpoints using the Swagger UI
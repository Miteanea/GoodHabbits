dotnet tool install --global dotnet-ef

dotnet ef	Displays available EF commands.
dotnet ef --version	Shows the installed version of EF Core CLI.

dotnet ef migrations add <Name>	Creates a new migration.
dotnet ef migrations remove	Removes the last migration.
dotnet ef migrations list	Lists all migrations.
dotnet ef migrations script	Generates a SQL script from migrations.

dotnet ef database update	Applies the latest migrations to the database.
dotnet ef database update <Migration>	Applies a specific migration.
dotnet ef database drop	Drops the database.

dotnet ef dbcontext scaffold "<ConnectionString>" <Provider>	Generates models from an existing database.
Example	dotnet ef dbcontext scaffold "Server=myserver;Database=mydb;User Id=myuser;Password=mypass;" Microsoft.EntityFrameworkCore.SqlServer

dotnet ef dbcontext info	Displays information about the DbContext.
dotnet ef dbcontext list	Lists available DbContext classes.
dotnet ef dbcontext scaffold	Generates DbContext and entity classes from an existing database.


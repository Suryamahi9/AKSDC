# Use the official .NET SDK image for building the application
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application files
COPY . ./

# Build the application and publish it to the /out directory
RUN dotnet publish -c Release -o /out

# Use the .NET runtime image for the final container
FROM mcr.microsoft.com/dotnet/aspnet:7.0

# Set the working directory in the container
WORKDIR /app

# Copy the published app from the build stage
COPY --from=build /out .

# Expose the port that the app will listen on
EXPOSE 80

# Set the entry point for the container
ENTRYPOINT ["dotnet", "MyDockerApi.dll"]

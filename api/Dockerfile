# Build runtime image
FROM microsoft/dotnet:2.1-aspnetcore-runtime

# Set working directory
WORKDIR /app

# Copy built files
COPY . ./

EXPOSE 80

# Start the application using dotnet
ENTRYPOINT ["dotnet", "api.dll"]


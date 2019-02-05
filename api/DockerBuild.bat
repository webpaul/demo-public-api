dotnet publish -c Release -o obj/Published
cd obj/Published
copy /y ..\..\Dockerfile .
docker build -t demo-public-api .
docker run -it -p 5001:80 --rm -e ASPNETCORE_ENVIRONMENT=Production demo-public-api
pause
cd ..\..
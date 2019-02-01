dotnet publish -c Release -o obj/Published
cd obj/Published
copy /y ..\..\Dockerfile .
docker build -t demo-public-api .
docker run -it -p 5001:80 --rm -e AWS_ACCESS_KEY_ID=?? -e AWS_SECRET_ACCESS_KEY=?? -e AWS_DEFAULT_REGION=us-east-1 -e ASPNETCORE_ENVIRONMENT=Production demo-public-api
pause
cd ..\..
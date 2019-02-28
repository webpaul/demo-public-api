az login
az acr login -n demopublicapi

docker tag demo-public-api demopublicapi.azurecr.io/demo-public-api:latest
docker push demopublicapi.azurecr.io/demo-public-api:latest

rem aws ecs update-service --cluster Demo --service demo-public-api --force-new-deployment

pause
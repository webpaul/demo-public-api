rem aws ecr create-repository --repository-name demo-public-api

docker tag demo-public-api 948177242161.dkr.ecr.us-east-2.amazonaws.com/demo-public-api:latest
aws ecr get-login --no-include-email | cmd
docker push 948177242161.dkr.ecr.us-east-2.amazonaws.com/demo-public-api:latest

rem aws ecs update-service --cluster Demo --service demo-public-api --force-new-deployment

pause
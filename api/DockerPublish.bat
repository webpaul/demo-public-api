rem aws ecr create-repository --repository-name demo-public-api

docker tag demo-public-api ???.dkr.ecr.us-east-1.amazonaws.com/demo-public-api
aws ecr get-login --no-include-email | cmd
docker push ???.dkr.ecr.us-east-1.amazonaws.com/demo-public-api

aws ecs update-service --cluster Demo --service demo-public-api --force-new-deployment

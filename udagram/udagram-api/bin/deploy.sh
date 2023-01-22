cd www
eb init --region $AWS_DEFAULT_REGION $EB_APP
eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres POSTGRES_DB=udagram POSTGRES_HOST=database-1.csqzglsuj8rf.us-east-1.rds.amazonaws.com AWS_REGION=us-east-1 AWS_PROFILE=default AWS_BUCKET=elasticbeanstalk-us-east-1-540700646425 JWT_SECRET=secretkey -e $EB_ENV
eb deploy $EB_ENV

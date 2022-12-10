rm -rf www/
npm install
npm run tsc

cp -rf src/config www/config
cp -R .elasticbeanstalk www/.elasticbeanstalk
cp .npmrc www/.npmrc
cp package.json www/package.json

cd www

zip -r Archive.zip .
eb list
eb use udacity-backend-api
eb deploy

eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME \
  POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
  POSTGRES_DB=$POSTGRES_DB \
  POSTGRES_HOST=$POSTGRES_HOST \
  DB_PORT=$DB_PORT \
  PORT=$PORT \
  JWT_SECRET=$JWT_SECRET \
  AWS_REGION=$AWS_REGION \
  AWS_PROFILE=$AWS_PROFILE \
  URL=$URL \
  AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

cd ..

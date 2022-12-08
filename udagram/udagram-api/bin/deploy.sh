rm -rf www/
npm install
npm run tsc

cp -rf src/config www/config
cp -R .elasticbeanstalk www/.elasticbeanstalk
cp .npmrc www/.npmrc
cp package.json www/package.json

cd www
zip -r Archive.zip .
cd .. 

eb list
eb use udacity-backend-polaeskandar
eb deploy

# Uncomment this block to set the environment variables
# eb setenv POSTGRES_USERNAME=postgres
# eb setenv POSTGRES_PASSWORD=password123
# eb setenv POSTGRES_DB=postgres
# eb setenv POSTGRES_HOST=database-1.c8phrtbomq4u.us-east-1.rds.amazonaws.com
# eb setenv DB_PORT=5432
# eb setenv PORT=8080
# eb setenv JWT_SECRET=ushaudasdoij123jsand713
# eb setenv AWS_REGION=us-east-1
# eb setenv AWS_PROFILE=admin-cli
# eb setenv AWS_BUCKET=udacity-backend-media
# eb setenv URL=http://udacity-frontend-polaeskandar.s3-website-us-east-1.amazonaws.com/
# eb setenv AWS_ACCESS_KEY_ID=AKIARWXDPNQE36URGRRM
# eb setenv AWS_SECRET_ACCESS_KEY=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
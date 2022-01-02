#/bin/bash
#build project
ng build --build-optimizer

#upload files
aws s3 cp ./dist/angular-login s3://angular.login.com --recursive --acl public-read

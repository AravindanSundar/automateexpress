#!/bin/bash
cd /home/ec2-user/nodejs-aws-codedeploy-pipeline
pm2 start app.js --name=nodejs-express-app
pm2 save
echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

echo 'pm2 restart nodejs-express-app' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
sudo pm2 restart nodejs-express-app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

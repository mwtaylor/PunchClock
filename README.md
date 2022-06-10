# PunchClock
A punch clock to clock in and out of doing work

# Manual Steps to Setup
1. Create a new AWS account
2. Go to CodeBuild in the AWS console to create the connection to GitHub:
   1. In the developer tools section in the left panel click on Connections under the Settings dropdown
   2. Click the Create Connection button
   3. Choose the GitHub provider and enter name "PunchClock GitHub Connection", click the Connect to GitHub button
   4. Click on Install a New App and on the GitHub screen for installing the connector choose to install for just this specific repository
   5. After being redirected back to the AWS console click the Connect button
3. Create the CloudFormation stack that sets up data resources like DynamoDB tables and S3 buckets:
   1. Go to CloudFormation in the AWS console
   2. Click the Create Stack button
   3. Select Template is ready and select Upload a template file
   4. Upload DataStack.json from this repository and then click Next
   5. Enter the stack name Data and pick Production from the DeploymentPhase parameter
   6. Click Next and then Next again
   7. Check the IAM acknowledgement and then click Create Stack
3. Create the CloudFormation stack that sets up CodePipeline:
   1. Go to CloudFormation in the AWS console
   2. Click the Create Stack button
   3. Select Template is ready and select Upload a template file
   4. Upload PipelineStack.json from this repository and then click Next
   5. Enter the stack name Pipeline and pick Production from the DeploymentPhase parameter
   6. Click Next and then Next again
   7. Check the IAM acknowledgement and then click Create Stack

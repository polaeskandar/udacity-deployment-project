# Pipeline process

1. In order to deploy a new version of the app you need to commit the code on github on the main branch on the following repository: [Code repository](https://github.com/polaeskandar/udacity-deployment-project)
2. Automatically, CircleCi will trigger a pipeline in order to deploy the new version of the application within 5 minutes. It only consists of 2 main phases.
3. The first phase of the pipeline will build and check for the app and all the dependencies.
4. The second phase will deploy the frontend and the backend consequently to the AWS services.

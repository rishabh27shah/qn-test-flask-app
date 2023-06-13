# Python-Flask-App

# Flask App.
1. Created a flask app that uses REST API to server particular routes.
2. In our case, flask app has routes /test that runs test function that returns the required string.
3. Also, flask app has route /health that returns success.
4. So when a GET request is made to the server at http://x.x.x.x/test it return the required string 329d4feb-c5c0-4de5-b10c-701b44fbec4f

# Automated Deployment using GITHUB ACTIONS
1. Created GITHUB Action that trigger the pipeline when a Push or PR is merged to the repo.
2. The pipeline then checksout the code and Builds a docker image from the DOCKERFILE,
3. The pipeline then PUSHs the image to the required server
4. Finally a Docker container is run on the required server that hosts the flask app and servers on port 80 of the server.
5. The container will restart always on any crash failure or Restarts.
6. Get request can be made on the server's ip eg http://x.x.x.x/test that will return the string 329d4feb-c5c0-4de5-b10c-701b44fbec4f
# Dockerizing-a-Node.js-web-app

- 1- Create the Node.js app
- 2- reate a server.js file that defines a web app using the Express.js framework
- 3- Creating a Dockerfile

### you need to make this steps to run app 
### 1- Building your image
  - $ docker build . -t <your username>/node-web-app
  - Your image will now be listed
  - ![image](https://user-images.githubusercontent.com/28235504/210284108-c0d890eb-4c56-441b-822c-e1f17973f691.png)
  
### 2- Run the image
  - $ docker run -p 49160:8080 -d <your username>/node-web-app
  
### 3- If you need to Enter the container 
  - $ docker exec -it <container id> /bin/bash
  
### 4- Now you can call your app using curl (install if needed via: sudo apt-get install curl):
  - $ curl -i localhost:49160
  - ![image](https://user-images.githubusercontent.com/28235504/210284071-5f783543-8b48-42b6-8c87-8226a679acaa.png)
  - ![image](https://user-images.githubusercontent.com/28235504/210283754-c646334e-f36a-444e-bd83-2bc43cc8acc2.png)

### Shut down the image
### 4- Kill our running container
  - $ docker kill <container id>
  - Confirm that the app has stopped
  - $ curl -i localhost:49160
  - curl: (7) Failed to connect to localhost port 49160: Connection refused

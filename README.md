**Dockerized Node.js Application with MongoDB and Mongo Express**

This project demonstrates how to containerize a Node.js application using Docker and Docker Compose.

The application runs using three Docker containers:

Node.js Container — Runs the backend and frontend of application.
MongoDB Container — Provides the database service.
Mongo Express Container — Provides a web-based GUI to manage MongoDB.

Docker Compose is used to create and run all services together.

**Project Structure**
.
├── Dockerfile
├── docker-compose.yaml
├── server.js
├── package.json
├── public/
└── README.md

Running with Docker Compose

Clone the repository and navigate to the project directory:

git clone <repository-url>
cd <project-directory>


Start all containers:

docker compose up -d


Docker Compose will automatically create and start:

Node.js application container
MongoDB database container
Mongo Express GUI container
Access the Application

After the containers are running, access the services using your server IP address.

Node.js Application
http://<IP>:5050


To retrieve users from MongoDB:

http://<IP>:5050/getusers

Mongo Express Dashboard
http://<IP>:8081


Note: To access Mongo Express, use the following credentials:

Username: admin
Password: pass

The MongoDB database used by the application is:

**queentech-db**

Requirements

Make sure the following are installed:

Docker
Docker Compose
Node.js (only required if running locally without Docker)
Project Purpose

The purpose of this project is to demonstrate how Docker can be used to containerize a Node.js application and run multiple
 services together using Docker Compose.

**Docker Compose manages:**

Container creation
Networking between services
Service configuration

**Application flow:**

Node.js Application
        |
        |
     MongoDB
        |
        |
 Mongo Express GUI

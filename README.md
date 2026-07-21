# docker-testap


Dockerized Node.js Application with MongoDB and Mongo Express

This project demonstrates how to containerize a Node.js application using Docker and Docker Compose.

The application is configured to run with three Docker containers:

Node.js container — Runs the backend application.
MongoDB container — Provides the database service.
Mongo Express container — Provides a web-based GUI to manage MongoDB.

A docker-compose.yaml file is included to simplify the process of creating and running all containers together.

Running the Application Locally

You can also run this application locally using any IDE of your choice.

The project includes the complete source code along with the required Docker configuration files:

Dockerfile — Used to create the Docker image for the Node.js application.
docker-compose.yaml — Used to create and run multiple containers together.

The Node.js application image was built using the provided Dockerfile and then used inside the Docker Compose configuration.

Running with Docker Compose

Clone this repository and navigate to the project directory:

git clone <repository-url>
cd <project-directory>


Start all containers using Docker Compose:

docker compose up -d


Docker Compose will automatically create and start:

Node.js application container
MongoDB database container
Mongo Express GUI container
Access the Application

After the containers are running, access the services using your server's public IP address.

Node.js Application
http://<PUBLIC-IP>:5050

Mongo Express Dashboard
http://<PUBLIC-IP>:8081

API Validation

To verify that the application is connected to MongoDB and returning data, use:

http://<PUBLIC-IP>:5050/getUsers


This endpoint retrieves users stored in the MongoDB database.

Project Structure
.
├── Dockerfile
├── docker-compose.yaml
├── server.js
├── package.json
├── public/
└── README.md

Requirements

Make sure you have installed:

Docker
Docker Compose
Node.js (if running locally without Docker)
Project Purpose

The main purpose of this project is to demonstrate containerization of a Node.js application using Docker.

It shows how multiple services can communicate with each other using Docker Compose:

Node.js Application
        |
        |
     MongoDB
        |
        |
  Mongo Express GUI


Docker Compose handles the networking, container creation, and service configuration automatically.



Running on Amazon EC2

If you are deploying this application on an Amazon EC2 instance,
 make sure to update your EC2 Security Group inbound rules to allow access to the application ports.

Add the following inbound rules:

Type	Port	Source
Custom TCP	5050	Your IP address or 0.0.0.0/0 (for public access)
Custom TCP	8081	Your IP address or 0.0.0.0/0 (for public access)

These ports are required to access:

Node.js application:
http://<PUBLIC-IP>:5050

Mongo Express dashboard:
http://<PUBLIC-IP>:8081


Without allowing these ports in the EC2 Security Group, the containers may be running correctly,
 but the application will not be reachable from the internet.

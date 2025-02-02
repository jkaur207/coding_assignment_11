# Docker React App - Kaur_Jaspreet_Coding_Assignment_11

## Overview
This is my submission for Coding Assignment 11. The goal of this project is to create a simple React application inside a Docker container and make it run on **localhost:7775**.

## Requirements
To run this project, you need:
- **Docker installed** on your computer ([Download Docker](https://www.docker.com/))

## Steps to Run the Project

### 1. Clone the Repository
If you are using GitHub, you can clone the project with:
```bash
git clone <repository-url>
cd Kaur_Jaspreet_site
```

### 2. Build the Docker Image
Run this command inside the project folder:
```bash
docker build -t kaur_jaspreet_coding_assignment_11 .
```
This will create the Docker image for the project.

### 3. Run the Docker Container
Now, run the container with:
```bash
docker run -p 7775:3000 kaur_jaspreet_coding_assignment_11
```
This will start the application inside the container.

### 4. Open the Web Application
Go to your browser and visit:
```
http://localhost:7775
```
You should see a simple page with **"Codin 1"** displayed.

## Stopping the Container
If you need to stop the application, press `CTRL + C` in the terminal, or find the container ID using:
```bash
docker ps
```
Then stop it with:
```bash
docker stop <container_id>
```

## Troubleshooting
### If the page doesn’t load:
- Make sure Docker is running.
- Try checking if the container is active using:
  ```bash
  docker ps
  ```
- If you see an error about missing `web-vitals`, install it inside the project:
  ```bash
  npm install web-vitals
  ```
  Then rebuild the Docker image.

# simple-go-app-cicd
This project contains steps to implement CI/CD pipeline for a simple go lang application. 

Go Application Deployment Pipeline
This repository contains a DevOps project designed to containerize and deploy a simple Go (Golang) application. The project is structured to walk you through the implementation step-by-step, from containerization to full deployment.

📂 Project Structure
Plaintext
├── source-code/          # Contains the Go application source code
├── Dockerfile            # Docker configuration ( Step 1)
└── README.md             # Project documentation

🚀 Step-by-Step Implementation Guide
Step 1: Containerizing the Go Application
To ensure our Go application runs consistently across different environments, we will containerize it using Docker. Because Go compiles into a single, self-contained binary, we can use a multi-stage Docker build. This keeps our final production image incredibly lightweight and secure by excluding build tools.

Implementation Tasks:
Create a file named Dockerfile in the root directory of this repository (outside the source-code folder).

Add the following multi-stage configuration to the Dockerfile:

CMD ["./main"]
How to Verify Step 1:
Run the following commands in your terminal to build and test your Docker container locally:

Bash
# Build the Docker image
docker build -t go-app-devops:v1 .

# Run the container
docker run -p 8080:8080 go-app-devops:v1

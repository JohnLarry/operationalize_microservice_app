[![CircleCI](https://dl.circleci.com/status-badge/img/gh/JohnLarry/operationalize_microservice_app/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/JohnLarry/operationalize_microservice_app/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

- Test your project code using linting
- Complete a Dockerfile to containerize this application
- Deploy your containerized application using Docker and make a prediction
- Improve the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl

### Project summary

- This project is about operationalizing a flask app using docker and kubernetes.
- I dockerized the flask application and used it to make a prediction.
- I also pushed the docker image to docker hub and used the pushed image
  to create a kubernetes cluster and make a prediction.
- Makefile was utilized to make it easy to run commands.
- I learnt a lot from doing this project, faced serious issue when
- I was trying to create a kubernetes cluster but I was
  able to solve it.

### Running it

- To run this repo, after pulling it, you need to create a virtual environment run :
- python3 -m venv venv
- and activate it afterwards, run:
- source venv/bin/actiave
- After setting up the virtual environment, run:
- make install
- It will install all necessary external modules.

- To lint your project run:
- make lint
- to ensure everything is working.

### Files

- In the Project the main file is the app.py, that's your application which you'll also run within the Dockerfile.
- Additionally we have the make_prediction.sh that is used to send a request to Port 8000 to the application.
- There is also the run_docker.sh & upload_docker.sh. The run_docker.sh takes care of building and running your Docker Container and the upload_docker.sh ships it to the Docker Hub
- run_kubernetes.sh takes care of running your Container within a K8s Cluster
- requirements.txt includes all necessary third-party-dependencies
- Makefile as a task collection to run linting, validation, installation and so forth
- output_txt_filesis the folder with the project requirements and the output txt files
- model_data has needed model traings data from boston housing
- .circleci as our CI/CD pipeline configuration

#!/usr/bin/env bash
#
# Put code here to build and setup the repo
#

# Build the image first, to have a container to work with.
docker build -t vteam-bike-python:1.0 .

# This will be differnet for different containers/repos.
# For this repo I want to execute the python-files inside the container and not run them automatically when developing.
docker run -it --rm -v "$(pwd)/app:/bike/app" --name bike-python vteam-bike-python:1.0 bash

# This can be removed, but it's good if the images gets removed for other to keep it cleaner.
docker rmi vteam-bike-python:1.0

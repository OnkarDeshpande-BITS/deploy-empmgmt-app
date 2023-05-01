#!/bin/bash

# Assumption - service is already build & docker login done

echo "Working with employee-service"
cd ./../employee-service
docker build --tag=emp-service .
docker tag emp-service odbits:emp-service
docker push odbits:emp-service

echo "Working with address-service"
cd ./../address-service
docker build --tag=address-service .
docker tag address-service odbits:address-service
docker push odbits:address-service

echo "Working with project-service"
cd ./../project-service
docker build --tag=project-service .
docker tag project-service odbits:project-service
docker push odbits:project-service

echo "COMPLETED"
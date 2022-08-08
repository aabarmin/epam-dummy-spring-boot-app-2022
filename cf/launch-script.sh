#!/bin/sh
## Verbose output
set -o xtrace

## Installing Corretto JDK 11
sudo yum install -y java-11-amazon-corretto

## Creating dirs
cd /opt
mkdir app
cd app

## Downloading sources from S3
aws s3 cp s3://abarmin-s3-bucket-2022/hello-world.jar app.jar

## Running the app
java -jar app.jar --server.port=8080
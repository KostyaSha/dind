#!/bin/bash

cp ../wrapdocker .
docker build -t dind_$(basename $(pwd))  .
rm wrapdocker

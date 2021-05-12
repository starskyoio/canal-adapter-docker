#!/bin/bash
docker build -t canal-adapter:1.1.5 .
docker tag canal-adapter:1.1.5 leeyao1990/canal-adapter:1.1.5
docker push leeyao1990/canal-adapter:1.1.5

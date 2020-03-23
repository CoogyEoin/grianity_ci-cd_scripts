#!/bin/bash

#Create sample CA
openssl genrsa -out ~/grianity/certs/rootCA.key 2048
openssl req -x509 -new -subj "/CN=$1" -nodes -key ~/grianity/certs/rootCA.key -sha256 -days 365 -out ~/grianity/certs/rootCA.pem






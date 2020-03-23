#!/bin/bash

#Create new device certificate
openssl genrsa -out ~/grianity/certs/deviceCert.key 2048
openssl req -new -subj "/CN=$1" -key ~/grianity/certs/deviceCert.key -out ~/grianity/certs/deviceCert.csr
openssl x509 -req -in ~/grianity/certs/deviceCert.csr -CA ~/grianity/certs/rootCA.pem -CAkey ~/grianity/certs/rootCA.key -CAcreateserial -out ~/grianity/certs/deviceCert.crt -days 365 -sha256

cat ~/grianity/certs/deviceCert.crt ~/grianity/certs/rootCA.pem > ~/grianity/certs/deviceCertAndCACert.crt




#!/bin/bash

#Create csr with regestration code
openssl genrsa -out ~/grianity/certs/verificationCert.key 2048
openssl req -new -subj "/CN=$1" -key ~/grianity/certs/verificationCert.key -out ~/grianity/certs/verificationCert.csr

#Create sampleCA cert
openssl x509 -req -in ~/grianity/certs/verificationCert.csr -CA ~/grianity/certs/rootCA.pem -CAkey ~/grianity/certs/rootCA.key -CAcreateserial -out ~/grianity/certs/verificationCert.crt -days 365 -sha256





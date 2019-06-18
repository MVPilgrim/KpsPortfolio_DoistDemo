#!/bin/bash

openssl req -x509 \
        -subj '/CN=kpsportfolio.info' \
        -nodes \
        -newkey rsa:2048 \
        -keyout TwistToWs_Key.pem \
        -out TwistToWs_Cert.pem \
        -days 10950

openssl x509 -in TwistToWs_Cert.pem -text
openssl x509 -in TwistToWs_Key.pem -text

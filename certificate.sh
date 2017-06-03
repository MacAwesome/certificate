#!/bin/sh

openssl s_client -connect $1:443 </dev/null 2>/dev/null | awk '/BEGIN CERTIFICATE/,/END CERTIFICATE/' | openssl x509 -noout -text

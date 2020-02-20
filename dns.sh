#!/bin/bash
#programa para reconhecer o IP dos dominios
# brute foce direto de dns
for url in $(cat lista.txt);
do
host $url.$1 | grep "has address" | cut -d " " -f4
done

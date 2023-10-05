#!/bin/sh
nc -v 172.18.0.2 1234
echo 'for (i=1; i<=50; i++) i' | bc

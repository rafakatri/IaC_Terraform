#!/bin/bash
cd /root/MySQL_ORM/
ip_address=$(hostname -I | awk '{print $1}')
uvicorn main:app --host $ip_address --port 80
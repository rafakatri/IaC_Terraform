#!/bin/bash
cd /root/simple_python_crud/
echo "MD_DB_SERVER=${rds_endpoint}" >> /root/simple_python_crud/.env
ip_address=$(hostname -I | awk '{print $1}')
uvicorn main:app --host $ip_address --port 80
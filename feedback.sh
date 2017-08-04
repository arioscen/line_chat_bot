#!/bin/bash
nohup ~/.redis/src/redis-server &
nohup ~/.webdis/webdis &
cd ~/jupyter
nohup jupyter notebook &
cd ~/
nohup ./ngrok http -region ap 5000 &
python view_dns.py

#!/bin/bash

for file in /home/sap/palembang/export/function_trigger/*
do
    # commands to execute for each file
    mysql -h 192.168.0.22 -u hakim -psap123ok palembang  < $file;
done

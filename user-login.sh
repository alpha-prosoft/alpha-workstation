#!/bin/bash


read -p "Enter Username: " username
read -s -p "Enter Password: " password

$HOME/alpha/login.sh $username $password

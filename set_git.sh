#!/bin/bash

# Make sure you have the latest version of the repo
echo
git pull
echo

# Ask the user for login details
read -p 'Git repository url: ' https://github.com/aviralksingh/CarND-Extended-Kalman-Filter-Project.git
read -p 'Git Username: ' Aviral_Singh
read -p 'Git email: ' aviralksingh@gmail.com

echo
echo Thank you $userVar!, we now have your credentials
echo for upstream $upstreamVar. You must supply your password for each push.
echo

echo setting up git

git config --global user.name $userVar
git config --global user.email $emailVar
git remote set-url origin $upstreamVar
echo

echo Please verify remote:
git remote -v
echo

echo Please verify your credentials:
echo username: `git config user.name`
echo email: `git config user.email`
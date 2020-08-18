#! /bin/bash

projectName=$(basename $1 .git)

mkdir $projectName
cd $projectName
echo "# ${projectName}" >> README.md

git init
git add README.md
git commit -m "first commit"
git remote add origin $1
git push -u origin master

# Changing master to main
git branch -m master main
git push -u origin main
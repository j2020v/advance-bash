#!/bin/bash


git add .

echo 'Enter the commit message' #what you see to inopt in read
read commitMessage #your input

git commit -m "$CommitMessage"
echo 'Enter the name of the branch:'
read branch

git push origin $branch

read

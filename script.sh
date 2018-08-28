#!/bin/sh

set -x

mkdir "local" "remote.git"
git init local
git init --bare remote.git

cd "local"

git remote add remote ../remote.git

# file1
touch file1
git add file1
git commit -m "add file1"

git push --set-upstream remote master

git log

# file2
git checkout -b feature-file2
touch file2
git add file2
git commit -m "add file2"

git push --set-upstream remote feature-file2

# file3
git checkout master
touch file3
git add file3
git commit -m "add file3"

git push

# rebase
git checkout feature-file2
git rebase master
git push
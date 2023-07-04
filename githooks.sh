#!/bin/bash

echo "Enter Your Project ABSOLUTE PATH: "
read -r projectPath

currentPath=$PWD

sudo gem install colorize

cd $projectPath
mkdir -p git-hooks
cp -R $currentPath/git-hooks/* ./git-hooks
cp -R git-hooks/* .git/hooks
chmod ug+x .git/hooks/*

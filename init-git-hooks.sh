#!/bin/bash

echo "Enter Your Project ABSOLUTE PATH: (not using started \"/~\", must use like \"/Users/bbodevelopers/\") "
read -r projectPath

currentPath=$PWD

sudo gem install colorize

cd $projectPath
mkdir -p git-hooks
cp -R $currentPath/git-hooks/* ./git-hooks
cp -R git-hooks/* .git/hooks
cp $currentPath/git-hooks.sh ./git-hooks.sh
chmod ug+x .git/hooks/*

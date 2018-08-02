#!/bin/bash

# GITHUB_TOKEN is set as an environment variable

DIRNAME="$(basename $PWD)"
USERNAME="YOUR_USERNAME"

function create_repo_and_push {
  git status --untracked-files

  read -p "Push all? (Y/n): " confirm

  if [[ "$confirm" = "n" || "$confirm" = "N" ]]; then
    exit
  fi

  git add .
  git commit -m "init"

  read -p "Please, enter the repository name ($DIRNAME): " REPO_NAME

  if [ "$REPO_NAME" = "" ]; then
    REPO_NAME="$DIRNAME"
  fi

  STATUS_CODE=$(curl --write-out %{http_code} --silent --output /dev/null --header "Authorization: token $GITHUB_TOKEN" --data "{\"name\": \"${REPO_NAME}\", \"private\": false }" https://api.github.com/user/repos)
  
  if [ "$STATUS_CODE" = 201 ]; then
    git remote add github git@github.com:${USERNAME}/${REPO_NAME}.git
    git push -u github master

    clear

    xdg-open "https://github.com/$USERNAME/$REPO_NAME"
  else
    echo "####################################################"
    echo "##################### nope $STATUS_CODE #####################"
    echo "####################################################"
  fi
}

if [ -d .git ]; then # if has a .git directory = equal git repo
  create_repo_and_push
else
  git init
  create_repo_and_push
fi;

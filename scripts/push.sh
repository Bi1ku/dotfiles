#!/bin/zsh#
git add .
if [[ -n $1 ]]; then 
  git commit -m $1
else
  desc=`git status | cat`
  git commit -m "auto commit: $desc"
fi

branch=`git branch | cat | grep '*' | sed 's/* //g'`
echo "Pushing to branch $branch!"

git push origin $branch

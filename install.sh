#!/bin/bash
while IFS= read -r git_repo; do
  echo "INSTALL: $git_repo"
  git clone ${git_repo}
done <"install.txt"

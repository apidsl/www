#!/bin/bash
while IFS= read -r git_repo; do
  repo=( $git_repo )
  echo "UPDATE PROJECT: ${repo[1]}/  FROM REPO:  (${repo[0]})"
  cd ${repo[1]} && git pull
  cd ..
done < "install.txt"
exit

echo "UPDATE: infraMonit.com"
echo "UPDATE: grabWhois.com"
echo "UPDATE: ApiPong.com"
echo "UPDATE: AirScanning.com"
echo "UPDATE: MultiSiteMap.com"

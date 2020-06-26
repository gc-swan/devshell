echo $(curl -s -D /dev/stderr --request GET -L --url `${1}` \
 --header X-Cisco-Meraki-API-Key: 6bec40cf957de430a6f1f2baa056b99a4fac9ea0 | jq)
curl -s -D /dev/stderr --request GET -L --url `${1}` --header X-Cisco-Meraki-API-Key: 6bec40cf957de430a6f1f2baa056b99a4fac9ea0 | jq

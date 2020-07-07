# This script will authenticate a user given basic auth endpoint, 
# which takes an email address and returns a token.The script, upon 
# receiving a token, copies it to your clipboard for convenience.
# Just replace your email and password on lines 11 and 12 below.

curl --location --request POST 'http://localhost:8080/api/auth/login' \
  --header 'Content-Type: application/json' \
  --header 'Content-Type: application/javascript' \
  --data-raw '{
          "email": "EMAIL",
          "password": "PASSWORD"
  }' \
  --silent \
  | sed 's/.*"\(.*\)"[^"]*$/\1/' | xclip -sel clip



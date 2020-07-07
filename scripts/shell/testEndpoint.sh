#!/usr/bin/env sh

# METHOD: POST|GET|PUT|DELETE
# REQUEST: /api/endpoint/path
# CONTROLLER: Filename/Controller
# OPERATION: Service Layer Operation
# DESCRIPTION: Description of what the API request does. 
#
# API Request Body
#   {
#       "key1": "value",
#       "key2": "value",
#   }
#
# Required Arguments
# > key1 -  Body parameter for the api request 
# > key2 -  Body parameter for the api request 

# Test Script
TOKEN=$(curl --location --request POST 'http://localhost:8080/api/auth' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "email": "EMAIL",
    "password": "PASSWORD"
  }' --silent \
  | sed 's/.*"\(.*\)"[^"]*$/\1/' )

curl --location --request POST 'http://localhost:8080/api/endpoint/path' \
  --header "x-access-token: $TOKEN" \
--header 'Content-Type: application/json' \
--data-raw '{
    "key1": "value",
    "key2": "value",
    }
}' 




#!/bin/bash

# API="${API_ORIGIN:-https://serene-bastion-62784.herokuapp.com/}"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "hadleysweck@gmail.com",
      "password": "open123",
      "password_confirmation": "open123"
    }
  }'

echo

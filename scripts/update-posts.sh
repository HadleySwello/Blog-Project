#!/bin/bash

# API="${API_ORIGIN:-https://serene-bastion-62784.herokuapp.com/}"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}/3" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "user_id": "2",
      "title": "This is NEW title",
      "content": "This is NEW content"
    }
  }'

echo

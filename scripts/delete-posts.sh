#!/bin/bash

# API="${API_ORIGIN:-https://serene-bastion-62784.herokuapp.com/}"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}/2" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "post": {
      "user_id": "1",
      "title": "This is a title",
      "content": "This is content"
    }
  }'

echo

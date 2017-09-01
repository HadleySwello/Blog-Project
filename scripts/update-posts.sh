#!/bin/bash

# API="${API_ORIGIN:-https://serene-bastion-62784.herokuapp.com/}"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}/29" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=BAhJIiU3ODcwZjhlN2Y3ZjlkNDk0ODUwM2Y5OTliOGQ0YjBiZQY6BkVG--ee948c63d27a6f396bbe0dd2221f3d4f8a27d07c" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "user_id": "1",
      "title": "This is Different NEW title",
      "content": "This is Different NEW content"
    }
  }'

echo

#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

curl --include --request DELETE http://localhost:4741/beers/3 \
--header "Authorization: Token token=BAhJIiVlMTQyMDgzZjBhZjU4ZThjMzQ2NzEyNzk3NDBhNWQ0NgY6BkVG--a769a9b8aac80eeb71f75a3bc853e091838aa7ad"

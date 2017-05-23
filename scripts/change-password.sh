#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
TOKEN="BAhJIiU1MTJmNWI4YmIzZmY5MDJmNjJmMzU3NDg2MzBmYWYwZAY6BkVG--650d108ca0efeb267efae6e8112415a64bbe1ca2"
ID="1"
OLDPW="gosox"
NEWPW="gosox"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo

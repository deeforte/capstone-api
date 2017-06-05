#!/bin/bash
city="boston"
beer="Ales for ALS"
brewery="harpoon"
style="IPA"
description="description here"
TOKEN="BAhJIiVjY2I4NzEyNDk2YzkwOTM5ZjhlYWY5YjlmNGYxOWE5OAY6BkVG--4202b813cf0ec9637f443d00b6500dbb26c0ab40"

curl --include --request POST http://localhost:4741/beers \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "beer": {
      "city": "'"${city}"'",
      "beer": "'"${beer}"'",
      "brewery": "'"${brewery}"'",
      "style": "'"${style}"'",
      "description": "'"${description}"'"
    }
  }'

echo

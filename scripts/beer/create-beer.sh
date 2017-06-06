#!/bin/bash
city="boston"
beer="Sleeper Street"
brewery="trillium"
style="IPA"
description="description here"
TOKEN="BAhJIiVlYTNhOGNlNjVmYjY1YzkzZjE0Y2ExYzg5YmVjYTljYwY6BkVG--ef15d201e3964d39402a5d2c25c7b09abdd614ff"

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

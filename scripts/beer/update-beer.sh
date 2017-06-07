API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"

curl --include --request PATCH http://localhost:4741/beers/5 \
--header "Content-Type: application/json" \
--header "Authorization: Token token=BAhJIiVlMTQyMDgzZjBhZjU4ZThjMzQ2NzEyNzk3NDBhNWQ0NgY6BkVG--a769a9b8aac80eeb71f75a3bc853e091838aa7ad" \
--data '{
  "beer": {
    "city": "update",
    "beer": "update",
    "brewery": "update",
    "style": "update",
    "description": "update"
  }
}'

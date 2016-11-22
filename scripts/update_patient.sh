curl --include --request PATCH http://localhost:4741/patients/7 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Julia Daly",
      "sickness": "The best",
      "age": 30
    }
  }'

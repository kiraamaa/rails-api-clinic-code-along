curl --include --request POST http://localhost:4741/appointments \
  --header "Content-Type: application/json" \
  --data '{
    "appointments": {
      "doctor_id": 1,
      "patient_id": 3,
      "date": "2016-11-29T10:00:00Z"
    }
  }'

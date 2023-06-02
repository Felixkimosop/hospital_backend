json.extract! medical_record, :id, :patient_id, :diagnosis, :treatment_details, :created_at, :updated_at
json.url medical_record_url(medical_record, format: :json)

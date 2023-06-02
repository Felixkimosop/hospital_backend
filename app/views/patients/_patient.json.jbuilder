json.extract! patient, :id, :name, :phone_number, :email, :age, :description, :created_at, :updated_at
json.url patient_url(patient, format: :json)

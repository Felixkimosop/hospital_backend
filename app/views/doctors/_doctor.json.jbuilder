json.extract! doctor, :id, :name, :age, :gender, :phone_number, :email, :specialization, :available, :is_active, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)

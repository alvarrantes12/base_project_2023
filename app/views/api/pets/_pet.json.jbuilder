json.extract! pet, :id, :first_name, :breed, :pedrigree, :created_at, :updated_at
json.url pet_url(pet, format: :json)
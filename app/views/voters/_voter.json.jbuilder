json.extract! voter, :id, :voterId, :districtId, :name, :email, :passwordHash, :created_at, :updated_at
json.url voter_url(voter, format: :json)

json.extract! election, :id, :electionId, :districtId, :electionDate, :title, :completed, :created_at, :updated_at
json.url election_url(election, format: :json)

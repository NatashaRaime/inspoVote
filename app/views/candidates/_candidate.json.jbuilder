json.extract! candidate, :id, :candidateId, :raceId, :votes, :name, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)

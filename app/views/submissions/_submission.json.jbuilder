json.extract! submission, :id, :voterId, :electionId, :entered, :created_at, :updated_at
json.url submission_url(submission, format: :json)

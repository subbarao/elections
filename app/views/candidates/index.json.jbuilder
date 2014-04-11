json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :dob
  json.url candidate_url(candidate, format: :json)
end

json.array!(@nominations) do |nomination|
  json.extract! nomination, :id, :candidate_id, :seat_id, :party_id, :year
  json.url nomination_url(nomination, format: :json)
end

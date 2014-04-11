json.array!(@seats) do |seat|
  json.extract! seat, :id, :name, :category
  json.url seat_url(seat, format: :json)
end

json.array!(@feeds) do |feed|
  json.extract! feed, :id, :titulo, :feed_url, :user
  json.url feed_url(feed, format: :json)
end

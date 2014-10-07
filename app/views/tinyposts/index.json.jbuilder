json.array!(@tinyposts) do |tinypost|
  json.extract! tinypost, :id, :content, :user_id
  json.url tinypost_url(tinypost, format: :json)
end

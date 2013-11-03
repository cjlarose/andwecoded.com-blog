json.array!(@topics) do |topic|
  json.extract! topic, :abbrev, :name
  json.url topic_url(topic, format: :json)
end

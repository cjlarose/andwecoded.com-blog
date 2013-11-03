json.array!(@labels) do |label|
  json.extract! label, :topic_id, :post_id
  json.url label_url(label, format: :json)
end

json.array!(@scratchpads) do |scratchpad|
  json.extract! scratchpad, :title, :body
  json.url scratchpad_url(scratchpad, format: :json)
end

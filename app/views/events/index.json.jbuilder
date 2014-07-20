json.array!(@events) do |event|
  json.extract! event, :id, :title, :details, :link
  json.url event_url(event, format: :json)
end

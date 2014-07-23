json.array!(@autoarts) do |autoart|
  json.extract! autoart, :id, :title, :description
  json.url autoart_url(autoart, format: :json)
end

json.array!(@profiles) do |profile|
  json.extract! profile, :id, :about
  json.url profile_url(profile, format: :json)
end

json.array!(@bpas) do |bpa|
  json.extract! bpa, :id
  json.url bpa_url(bpa, format: :json)
end

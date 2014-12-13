json.array!(@copyrights) do |copyright|
  json.extract! copyright, :id
  json.url copyright_url(copyright, format: :json)
end

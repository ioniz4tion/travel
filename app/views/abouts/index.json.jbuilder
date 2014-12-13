json.array!(@abouts) do |about|
  json.extract! about, :id, :image, :description, :name, :email, :phone
  json.url about_url(about, format: :json)
end

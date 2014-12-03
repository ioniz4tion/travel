json.array!(@gen_attractions) do |gen_attraction|
  json.extract! gen_attraction, :id, :name, :description, :pricing, :location, :link, :image_description, :phone, :website, :hours, :rating, :iframe_id, :button_id, :gen_packages_id
  json.url gen_attraction_url(gen_attraction, format: :json)
end

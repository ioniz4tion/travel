json.array!(@gen_restaurants) do |gen_restaurant|
  json.extract! gen_restaurant, :id, :name, :description, :pricing, :address, :link, :image_description, :phone, :website, :hours, :rating, :iframe_id, :button_id, :gen_packages_id
  json.url gen_restaurant_url(gen_restaurant, format: :json)
end

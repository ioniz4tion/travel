json.array!(@gen_hotels) do |gen_hotel|
  json.extract! gen_hotel, :id, :name, :description, :pricing, :address, :link, :image_description, :phone, :website, :rating, :iframe_id, :button_id, :gen_packages_id
  json.url gen_hotel_url(gen_hotel, format: :json)
end

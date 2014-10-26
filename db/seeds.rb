GenPackage.create!([
  {name: "Hawaii", code: 23417489, image_name: "Test", image_description: "This is a test", image_link: "placeholder.png"},
  {name: "London", code: 44418, image_name: "Test", image_description: "This is a test", image_link: "placeholder.png"},
  {name: "New York", code: 2459115, image_name: "Test", image_description: "This is a test", image_link: "placeholder.png"},
  {name: "Seattle", code: 2490383, image_name: "Test", image_description: "This is a test", image_link: "placeholder.png"},
  {name: "Sydney", code: 1105779, image_name: "Test", image_description: "This is a test", image_link: "placeholder.png"},
  {name: "Washington", code: 2514815, image_name: "Test", image_description: "This is a test", image_link: "placeholder.png"}
])

GenHotel.create!([
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6}
])

GenHotelImage.create!([
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_hotel_id: 1},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_hotel_id: 2},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_hotel_id: 2},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_hotel_id: 3},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_hotel_id: 4}
])

GenRestaurant.create!([
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", address: "3343", link: "www.hello.com", gen_package_id: 6}
])

GenRestaurantImage.create!([
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_restaurant_id: 1},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_restaurant_id: 2},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_restaurant_id: 2},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_restaurant_id: 3},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_restaurant_id: 4}
])

GenAttraction.create!([
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "www.hello.com", gen_package_id: 6}
])

GenAttractionImage.create!([
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_attraction_id: 1},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_attraction_id: 2},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_attraction_id: 2},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_attraction_id: 3},
  {name: "Test", description: "This is a test.", link: "www.hello.com", gen_attraction_id: 4}
])

GenImage.create!([
  {name: "Test", description: "This is a test.", link: "placeholder.png", gen_package_id: 1},
  {name: "Test", description: "This is a test.", link: "placeholder.png", gen_package_id: 2},
  {name: "Test", description: "This is a test.", link: "placeholder.png", gen_package_id: 2},
  {name: "Test", description: "This is a test.", link: "placeholder.png", gen_package_id: 3},
  {name: "Test", description: "This is a test.", link: "placeholder.png", gen_package_id: 4}
])

HolPackage.create!([
  {name: "Christmas", link: "christmas"},
  {name: "Spring Break", link: "spring_break"},
  {name: "Thanksgiving", link: "thanksgiving"},
  {name: "Valentine's Day", link: "valentines"}
])

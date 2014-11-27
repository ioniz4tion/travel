GenPackage.create!([
  {name: "Hawaii", code: 23417489, image_name: "Hawaii", image_description: "This is Hawaii.", image_link: "hawaii.jpg"},
  {name: "London", code: 44418, image_name: "Test", image_description: "This is London", image_link: "london.jpg"},
  {name: "New York", code: 2459115, image_name: "New York", image_description: "This is New York.", image_link: "NewYork.jpg"},
  {name: "Seattle", code: 2490383, image_name: "Seattle", image_description: "This is a Seattle.", image_link: "seattle.jpg"},
  {name: "Sydney", code: 1105779, image_name: "Test", image_description: "This is not Seattle.", image_link: "sydney.jpg"},
  {name: "Washington", code: 2514815, image_name: "Test", image_description: "This is Washington", image_link: "washington.jpg"}
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
  {name: "Attraction 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "3343 N Street City, Province, Country", link: "330x210.gif", gen_package_id: 1},
  {name: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 1},
  {name: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 1},
  {name: "Test", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 1},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 2},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 3},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 3},
  {name: "Space Needle", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 4},
  {name: "Entertainment Music Project", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 4},
  {name: "Seattle Art Museum", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 4},
  {name: "Pike Place Market", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 4},
  {name: "Seattle Science Center", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 4},
  {name: "CenturyLink Field", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 4},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 5},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 6},
  {name: "Test", description: "This is a test.", pricing: "10 bucks", location: "3343", link: "330x210.gif", gen_package_id: 6}
])

GenImage.create!([
  {name: "Test", description: "This is a test.", link: "720x700.gif", gen_package_id: 1},
  {name: "Test", description: "This is a test.", link: "720x700.gif", gen_package_id: 2},
  {name: "Test", description: "This is a test.", link: "720x700.gif", gen_package_id: 2},
  {name: "Test", description: "This is a test.", link: "720x700.gif", gen_package_id: 3},
  {name: "Test", description: "This is a test.", link: "720x700.gif", gen_package_id: 4}
])

HolPackage.create!([
  {name: "Christmas", link: "christmas"},
  {name: "Spring Break", link: "spring_break"},
  {name: "Thanksgiving", link: "thanksgiving"},
  {name: "Valentine's Day", link: "valentines"}
])

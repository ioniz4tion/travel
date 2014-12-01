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
  {name: "Pearl Harbor", iframe_id: "pearl", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "1 Arizona Memorial Place, Aiea, HI 96818", link: "330x210.gif", gen_package_id: 1},
  {name: "Hawaii Volcanoes National Park", iframe_id: "volcanoes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "Hawaii Volcanoes National Park, HI 96718", link: "330x210.gif", gen_package_id: 1},
  {name: "Diamond Head State Monument", iframe_id: "diamond", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "Honolulu, HI 96815", link: "330x210.gif", gen_package_id: 1},
  {name: "Hanauma Bay", iframe_id: "hanauma", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", pricing: "10 bucks", location: "100 Hanauma Bay Rd, Honolulu, HI 96825", link: "330x210.gif", gen_package_id: 1},
  {name: "Iolani Palace", iframe_id: "iolani", description: "This is a test.", pricing: "10 bucks", location: "364 S King St, Honolulu, HI 96813", link: "330x210.gif", gen_package_id: 1},
  {name: "Sea Life Park Hawaii", iframe_id: "sea_life", description: "This is a test.", pricing: "10 bucks", location: "41-202 Kalanianaole Hwy, Waimanalo, HI 96795", link: "330x210.gif", gen_package_id: 1},
  {name: "Waipio Valley", iframe_id: "waipio", description: "This is a test.", pricing: "10 bucks", location: "48-5416 Government Main Rd, Honokaa, HI 96727", link: "330x210.gif", gen_package_id: 1},
  {name: "Maui Ocean Center", iframe_id: "moc", description: "This is a test.", pricing: "10 bucks", location: "192 Maalaea Rd, Wailuku, HI 96793", link: "330x210.gif", gen_package_id: 1},
  {name: "Iao Valley State Park", iframe_id: "iao", description: "This is a test.", pricing: "10 bucks", location: "Wailuku, HI 96793", link: "330x210.gif", gen_package_id: 1},

  {name: "Tower of London", iframe_id: "london_tower", description: "This is a test.", pricing: "10 bucks", location: "London EC3N 4AB, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "London Eye", iframe_id: "london_eye", description: "This is a test.", pricing: "10 bucks", location: "London SE1 7PB, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "Buckingham Palace", iframe_id: "buckingham", description: "This is a test.", pricing: "10 bucks", location: "London SW1A 1AA, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "Trafalgar Square", iframe_id: "trafalgar", description: "This is a test.", pricing: "10 bucks", location: "Westminster, London WC2N 5DN, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "The British Museum", iframe_id: "british_museum", description: "This is a test.", pricing: "10 bucks", location: "Great Russell St, London WC1B 3DG, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "London Bridge", iframe_id: "london_bridge", description: "This is a test.", pricing: "10 bucks", location: "London, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "Churchill War Rooms", iframe_id: "churchill", description: "This is a test.", pricing: "10 bucks", location: "Clive Steps, King Charles Street, London SW1A 2AQ, United Kingdom", link: "330x210.gif", gen_package_id: 2},
  {name: "The National Gallery", iframe_id: "gallery", description: "This is a test.", pricing: "10 bucks", location: "Trafalgar Square, London WC2N 5DN, United Kingdom", link: "330x210.gif", gen_package_id: 2},

  {name: "Empire State Building", iframe_id: "empire", description: "This is a test.", pricing: "10 bucks", location: "350 5th Ave, New York, NY 10118", link: "330x210.gif", gen_package_id: 3},
  {name: "Statue of Liberty", iframe_id: "liberty", description: "This is a test.", pricing: "10 bucks", location: "Liberty Island, New York, NY", link: "330x210.gif", gen_package_id: 3},
  {name: "Times Square", iframe_id: "times_sq", description: "This is a test.", pricing: "10 bucks", location: "Manhattan, NY 10036", link: "330x210.gif", gen_package_id: 3},
  {name: "Madison Square Garden", iframe_id: "madison_sq", description: "This is a test.", pricing: "10 bucks", location: "4 Pennsylvania Plaza, New York, NY 10001", link: "330x210.gif", gen_package_id: 3},
  {name: "Central Park", iframe_id: "cen_pk", description: "This is a test.", pricing: "10 bucks", location: "New York, NY", link: "330x210.gif", gen_package_id: 3},
  {name: "Brooklyn Bridge", iframe_id: "bklyn_bridge", description: "This is a test.", pricing: "10 bucks", location: "New York, NY", link: "330x210.gif", gen_package_id: 3},
  {name: "Yankee Stadium", iframe_id: "yankee", description: "This is a test.", pricing: "10 bucks", location: "1 E 161st St, Bronx, NY 10451", link: "330x210.gif", gen_package_id: 3},

  {name: "Space Needle", iframe_id: "needle", button_id: "showNeedle", description: "This is a test.", pricing: "10 bucks", location: "400 Broad St, Seattle, WA 98109", hours: "10:00 AM -- 11:00 PM", website: "http://www.spaceneedle.com/home/", phone: "+1 206 905 2100", rating: "4.2", link: "330x210.gif", gen_package_id: 4},
  {name: "Experience Music Project", iframe_id: "emp", button_id: "showEmp", description: "This is a test.", pricing: "10 bucks", location: "325 5th Ave N, Seattle, WA 98109", hours: "10:00 AM -- 5:00 PM", website: "http://www.empmuseum.org/", phone: "+1 206 770 2700", rating: "4.2", link: "330x210.gif", gen_package_id: 4},
  {name: "Seattle Art Museum", iframe_id: "sam", button_id: "showSam", description: "This is a test.", pricing: "10 bucks", location: "1300 1st Ave, Seattle, WA 98101", hours: "10:00 AM -- 5:00 PM", website: "http://www.seattleartmuseum.org/", phone: "+1 206 654 3100", rating: "4.2", link: "330x210.gif", gen_package_id: 4},
  {name: "Pike Place Market", iframe_id: "pike", button_id: "showPike", description: "This is a test.", pricing: "10 bucks", location: "Seattle, WA", hours: "N/A", website: "", phone: "+1 206 682 7453", rating: "4.5", link: "330x210.gif", gen_package_id: 4},
  {name: "Pacific Science Center", iframe_id: "psc", button_id: "showPsc", description: "This is a test.", pricing: "10 bucks", location: "200 2nd Ave N, Seattle, WA 98109", hours: "10:00 AM -- 5:00 PM", website: "http://www.pacificsciencecenter.org/", phone: "+1 206 443 2001", rating: "3.9", link: "330x210.gif", gen_package_id: 4},
  {name: "CenturyLink Field", iframe_id: "century", button_id: "showCentury", description: "This is a test.", pricing: "10 bucks", location: "800 Occidental Ave S, Seattle, WA 98134", hours: "8:30 AM -- 5:00 PM", website: "http://www.centurylinkfield.com/", phone: "+1 206 381 7555", rating: "4.5", link: "330x210.gif", gen_package_id: 4},

  {name: "Sydney Opera House", iframe_id: "opera", description: "This is a test.", pricing: "10 bucks", location: "Bennelong Point, Sydney NSW 2000, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Bondi Beach", iframe_id: "bondi", description: "This is a test.", pricing: "10 bucks", location: "NSW 2026, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Taronga Zoo", iframe_id: "taronga", description: "This is a test.", pricing: "10 bucks", location: "Bradleys Head Rd, Mosman NSW 2088, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Manly Sea Life Sanctuary", iframe_id: "manly", description: "This is a test.", pricing: "10 bucks", location: "W Esplanade, Manly NSW 2095, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Sydney Harbour Bridge", iframe_id: "sydney_bridge", description: "This is a test.", pricing: "10 bucks", location: "Sydney NSW, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Darling Harbour", iframe_id: "darling", description: "This is a test.", pricing: "10 bucks", location: "Sydney NSW 2000, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Port Jackson", iframe_id: "jackson", description: "This is a test.", pricing: "10 bucks", location: "Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "The Rocks", iframe_id: "rocks", description: "This is a test.", pricing: "10 bucks", location: "NSW 2000, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "WILD LIFE Sydney Zoo", iframe_id: "sydney_zoo", description: "This is a test.", pricing: "10 bucks", location: "1-5 Wheat Rd, Darling Harbour NSW 2000, Australia", link: "330x210.gif", gen_package_id: 5},
  {name: "Sydney Tower Eye", iframe_id: "sydney_tower", description: "This is a test.", pricing: "10 bucks", location: "100 Market St, Sydney NSW 2000, Australia", link: "330x210.gif", gen_package_id: 5},

  {name: "National Mall", iframe_id: "ntl_mall", description: "This is a test.", pricing: "10 bucks", location: "Washington, DC", link: "330x210.gif", gen_package_id: 6},
  {name: "United States Capitol Building", iframe_id: "us_capitol", description: "This is a test.", pricing: "10 bucks", location: "East Capitol St NE & First St SE, Washington, DC 20004", link: "330x210.gif", gen_package_id: 6},
  {name: "Smithsonian Institution", iframe_id: "smithsonian", description: "This is a test.", pricing: "10 bucks", location: "1000 Jefferson Dr SW, Washington, DC 20004", link: "330x210.gif", gen_package_id: 6},
  {name: "The White House", iframe_id: "white_house", description: "This is a test.", pricing: "10 bucks", location: "1600 Pennsylvania Ave NW, Washington, D.C., DC 20500", link: "330x210.gif", gen_package_id: 6},
  {name: "Smithsonian National Air and Space Museum", iframe_id: "smith_air_space", description: "This is a test.", pricing: "10 bucks", location: "600 Independence Ave SW, Washington, DC 20560", link: "330x210.gif", gen_package_id: 6},
  {name: "Lincoln Memorial", iframe_id: "lincoln", description: "This is a test.", pricing: "10 bucks", location: "2 Lincoln Memorial Cir NW, Washington, DC 20037", link: "330x210.gif", gen_package_id: 6}
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

Question.create!([
  {text: "What kind of weather do you like?"},
  {text: "What kind of vacation are you looking for?"},
  {text: "this is a test question"}
])

Answer.create!([
  {text: "Hot Weather", label: "hot", color: "red", score: 100, question_id:1},
  {text: "Temperate Weather", label: "temperate", color: "green", score: 50, question_id:1},
  {text: "Cold Weather", label: "cold", color: "blue", score: 0, question_id:1},
  {text: "Exciting", label: "exciting", color: "red", score: 100, question_id:2},
  {text: "Normal", label: "normal", color: "green", score: 50, question_id:2},
  {text: "Relaxing", label: "relaxing", color: "blue", score: 0, question_id:2},
  ])

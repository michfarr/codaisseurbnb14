Photo.destroy_all
Theme.destroy_all
Room.destroy_all
Profile.destroy_all
User.destroy_all

# Themes
modern_and_minimal = Theme.create!(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create!(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create!(name: "Warm and Cozy")
room_with_a_view = Theme.create!(name: "Room with a View")
elegant_and_ornate = Theme.create!(name: "Elegant and Ornate")
a_mans_touch = Theme.create!(name: "A Man's Touch")
white_washed = Theme.create!(name: "White Washed")
tempting_terrace = Theme.create!(name: "Tempting Terrace")

# Users
miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create!(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create!(email: "matt@codaisseurbnb.com", password: "abcd1234")

# Rooms
room_1 = Room.create!(home_type: "House", room_type: "Shared", accommodate: 2, bedroom_count: 2, bathroom_count: 3, listing_name: "You will never forget your stay!", description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade.", address: "Colon 58, 1B, 11100 Cadiz (Spain)", has_tv: false, has_kitchen: true, has_airco: false, has_heating: false, has_internet: true, price: 100, active: true, user: miriam, themes: [modern_and_minimal, sleek_and_sophisticated])

room_2 = Room.create!(home_type: "House", room_type: "Shared", accommodate: 2, bedroom_count: 2, bathroom_count: 3, listing_name: "A place in the middle of Holland", description: "Freegan yuccie everyday carry tote bag you probably haven't heard of them godard.", address: "Daguerrestraat 23, 1054TG Utrecht (Netherlands)", has_tv: false, has_kitchen: true, has_airco: false, has_heating: false, has_internet: true, price: 100, active: true, user: wouter, themes: [warm_and_cozy, a_mans_touch])

room_3 = Room.create!(home_type: "House", room_type: "Shared", accommodate: 2, bedroom_count: 2, bathroom_count: 3, listing_name: "Great for a Weekend", description: "Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.", address: "Tottenham Court Road 14, W1T 1JY London (UK)", has_tv: false, has_kitchen: true, has_airco: false, has_heating: false, has_internet: true, price: 100, active: true, user: matt, themes: [elegant_and_ornate, white_washed])

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/28dab8dd748210a53c77bb284558a5ce5905ca6a_git9a9.jpg", room: room_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/99ca8b27a84b46c373803df268167d15c3488e99_tvrfql.jpg", room: room_1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png", room: room_1)

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007284/20161005-60rbr_rp41qn.png", room: room_2)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007288/20161005-e8xxp_cap4y9.png", room: room_2)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007287/20161005-zsogv_l4urst.png", room: room_2)

photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007290/0676bf3a1f914f38e9b5b6b9d69e381495aa6abb_abx9ir.jpg", room: room_3)
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007291/20161005-brctd_fju0e9.png", room: room_3)
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007291/20161005-ngwqx_erq7sf.png", room: room_3)
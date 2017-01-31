User.create!(first_name: "Stefan",
             last_name:  "Babic",
             email:      "babic@deltacity.net",
             street:     "Wermelingstraße 41",
             zip:        48147,
             city:       "Münster",
             birthday:   "1985-01-27",
             password:              "testing123",
             password_confirmation: "testing123",
             admin:      true,
             activated:  true,
             activated_at:          Time.zone.now)

99.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  street = Faker::Address.street_address
  zip = Faker::Number.between(from = 1, to = 50000)
  city = Faker::Address.city
  birthday = Faker::Date.birthday(min_age = 18, max_age = 100)
  password = "password123"
  User.create!(first_name: first_name,
               last_name:  last_name,
               email:      email,
               street:     street,
               zip:        zip,
               city:       city,
               birthday:   birthday,
               password:              password,
               password_confirmation: password,
               activated:  false,
               activated_at:          Time.zone.now)
end

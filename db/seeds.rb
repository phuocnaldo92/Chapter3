User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
<<<<<<< 6563d2f4b467889ad661a3289ccc63b4c2846cdd
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
=======
             admin: true)
>>>>>>> chapter10

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
<<<<<<< 6563d2f4b467889ad661a3289ccc63b4c2846cdd
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
=======
               password_confirmation: password)
>>>>>>> chapter10
end

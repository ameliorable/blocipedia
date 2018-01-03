require 'faker'

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

25.times do
  Wiki.create!(
    title: Faker::TwinPeaks.location,
    body: Faker::TwinPeaks.quote,
    private: false
  )
end

User.create!(
  email: "carolynoliveira515@gmail.com",
  password: "password"
)

wikis = Wiki.all
users = User.all

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Wiki.count} wikis created."

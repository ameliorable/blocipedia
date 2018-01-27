10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    confirmed_at: Time.now
  )
end

wikis = Wiki.all
users = User.all

25.times do
  Wiki.create!(
    title: Faker::TwinPeaks.location,
    body: Faker::TwinPeaks.quote,
    private: false,
    user: users.sample
  )
end

User.create!(
  email: "carolynoliveira515@gmail.com",
  password: "password",
  confirmed_at: Time.now
)

User.create!(
  email: "carolynlwalcott@gmail.com",
  password: "password",
  confirmed_at: Time.now
)

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Wiki.count} wikis created."

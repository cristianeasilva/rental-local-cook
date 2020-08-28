puts "criando users"
20.times do |i|
  user = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password(min_length: 8)
    )
  user.save!
end
puts "done"

puts "criando cooks"
20.times do |i|
  cook = Cook.new(
    user_id: i + 1,
    name: Faker::Name.name,
    service: Faker::Food.dish,
    price: rand(10..300),
    location: Faker::Address.city
  )
  cook.save!
end
puts "pronto"

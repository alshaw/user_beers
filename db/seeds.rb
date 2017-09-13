user = User.first

# if !user
unless user
  user = User.create(first_name: 'test', last_name: 'tester',
                     age: 21, email: 'test@test.com', password: 'password')
end

20.times do 
  user.beers.create(name: Faker::Beer.name, style: Faker::Beer.style,
                    ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol)
end

puts 'Beer Seeded For First User!'

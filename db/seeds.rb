require 'faker'
include Faker

50.times do

  User.create!(
    email: "#{Internet.email}",
    bio: "#{Hipster.paragraph(3, true, 4)}",
    full_name: "#{Name.name}"
  )

end

puts "Seeds Finished"
puts "#{User.count} users created"

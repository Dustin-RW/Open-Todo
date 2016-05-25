require 'faker'
include Faker

#50.times do

#  User.create!(
#    email: "#{Internet.email}",
#    bio: "#{Hipster.paragraph(3, true, 4)}",
#    full_name: "#{Name.name}"
#  )
#
#end
#
  standard = User.create(
    email: "standard@example.com",
    bio: "#{Hipster.paragraph(3, true, 4)}",
    full_name: "standard",
    password: "password"
  )

#  users = User.all


puts "Seeds Finished"
puts "#{User.count} users created"

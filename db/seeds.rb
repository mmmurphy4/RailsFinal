# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

%w(John Zack Claire Steve).each do |name|
  User.create name: name, age: rand(18..22), major: "Computer Science", email: name+"@gmail.com", password: "password", password_confirmation: "password"
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#require 'faker'



users = User.take(6)

for i in 1..6 do 
	i = i.to_s
	username = Faker::Internet.user_name
	password = Faker::Internet.password(8)
 	email = Faker::Internet.email
 	content = Faker::Lorem.paragraph(10)

	User.create!( email: email, username: username, password: password, password_confirmation: password ) 
 	Micropost.create!(content: content, user_id: User.find(i).id) 

 end


# users = User.order(:created_at).take(6)
# 50.times do
# 	content = Faker::Lorem.sentence(5)
# 	users.each { |user| user.microposts.create!(content: content) }
# end

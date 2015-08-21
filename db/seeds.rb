# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#require 'faker'



# users = User.take(6)

# for i in 1..6 do 
# 	i = i.to_s
# 	username = Faker::Internet.user_name
# 	password = Faker::Internet.password(8)
#  	email = Faker::Internet.email
#  	content = Faker::Lorem.paragraph(10)
#  	heading = Faker::Lorem.sentence
#  	software = Faker::Lorem.word

# 	User.create!( email: email, username: username, password: password, password_confirmation: password ) 
#  	Micropost.create!(content: content, user_id: User.find(i).id, heading: heading, software: software ) 

#  end

	require 'roo'

	email = "ryanzaari@gmail.com"
    name = "Ryan Zaari"
	username = "rzaari"
	password = "@monkey2"

	User.create!( email: email, name: name, username: username, password: password, password_confirmation: password, activated: true, activated_at: Time.zone.now ) 

    ex = Roo::Excelx.new("./code.xlsx")
    ex.default_sheet = ex.sheets[0]              #Mention the sheet number (0 is the first sheet, 1 is second sheet, etc.)
    2.upto(74) do | line |                              #Start and end of rows you want to include
    software = ex.cell(line,'A')                   #Column A in spreadsheet   
    heading = ex.cell(line,'B')
    content = ex.cell(line,'C')


    Micropost.create(content: content, user_id: User.first.id, heading: heading, software: software )

	end
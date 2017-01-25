# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_users
  10.times do |n|
    email = Faker::Internet.email
    password = "password"
    password_confirmation = "password"
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name

    user = User.create!(email: email, password: password, password_confirmation: password_confirmation, first_name: first_name, last_name: last_name)

    create_messages(user.id)
  end
end

def create_messages(user_id)
  5.times do |n|
    content = Faker::Lorem.sentence

    Message.create!(content: content, user_id: user_id)
  end
end

create_users
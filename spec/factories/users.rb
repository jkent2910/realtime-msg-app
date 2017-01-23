FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@gmail.com"
  end

  factory :user do |u|
    u.email
    u.password 'password'
    u.password_confirmation 'password'
  end

  factory :julie, :parent => :user do |s|
    s.email 'julie@gmail.com'
    s.first_name "Julie"
    s.last_name "Kent"
  end
end
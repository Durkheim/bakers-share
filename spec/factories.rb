require 'factory_girl_rails'

FactoryGirl.define do
  factory :user do
    username "Test_User"
    email "email@email.com"
    password "password"
    bio "Who am I? No one"
    avatar "image.jpg"
  end

end
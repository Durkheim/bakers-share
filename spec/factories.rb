require 'factory_girl_rails'

FactoryGirl.define do
  factory :user do
    username "Test_User"
    email "email@email.com"
    password "password"
    bio "Who am I? No one"
    avatar "image.jpg"
  end

  factory :recipe do
    title "Recipe from Test_User"
    description "Great chili recipe for the winter"
    serving 5
    user
  end

  factory :comment do
    text "Tried this at home. Delicious recipe!"
    commenter
    recipe
  end

  factory :reply do
    text "Thank you!"
    comment
    replier
  end

  factory :ingredient do
    name "Paprika"
    recipe
  end

  factory :quantity do
    amount 1
    ingredient
  end

  factory :measurement do
    unit_of_measure "tsp"
  end

  factory :ingredient_measurement do
    ingredient
    measurement
  end

  factory :favorite_recipe do
    user
    recipe
  end

end
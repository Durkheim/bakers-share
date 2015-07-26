class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :commenters, through: :comments
  has_many :favorite_recipes
  has_many :users_who_favorited, through: :favorite_recipes, source: :user
  has_many :ingredients
  has_many :directions
  has_many :recipe_photos
end

class User < ActiveRecord::Base
  has_many :posted_recipes, class_name: "Recipe"
  has_many :ingredients, through: :recipes
  has_many :comments, foreign_key: :commenter_id
  has_many :replies, foreign_key: :replier_id
  has_many :favorite_recipes
  has_many :recipes_favorited, through: :favorite_recipes, source: :recipe
end

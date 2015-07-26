class User < ActiveRecord::Base
  has_many :recipes
  has_many :comments, foreign_key: :commenter_id
  has_many :replies, foreign_key: :replier_id
  has_many :favorite_recipes
  #to query all recipes a user has commented on
  has_many :recipes_as_commenter, through: :comments, source: :recipe
  #to query all comments a user has received on posted recipes
  has_many :comments_on_recipes, through: :recipes, source: :comments
  has_many :ingredients, through: :recipes
  has_many :recipes_favorited, through: :favorite_recipes, source: :recipe
end

class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredient_measurements
  has_many :measurements, through: :ingredient_measurements
  has_one :quantity
end

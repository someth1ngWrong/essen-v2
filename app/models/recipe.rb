class Recipe < ApplicationRecord
  belongs_to :collection
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes
end
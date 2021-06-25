class IngredientsRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  has_many :replacements, class_name: 'Ingredient', foreign_key: 'id'
end

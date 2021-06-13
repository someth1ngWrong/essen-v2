class Ingredient < ApplicationRecord
  has_many :post_ingredients, dependent: :destroy
  has_many :posts, through: :post_ingredients
  has_many :replacements, class_name: "Ingredient",
  foreign_key: "main_id"

  belongs_to :main, class_name: "Ingredient", optional: true
end

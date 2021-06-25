class FoodCategoryPost < ApplicationRecord
  belongs_to :post
  belongs_to :food_category
end

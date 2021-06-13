class PostIngredient < ApplicationRecord
  enum measure: %w(ч мг г кг мл л ч.л ст.л шт)

  belongs_to :post
  belongs_to :ingredient
  
  belongs_to :ingr_replica1, class_name: "Ingredient", optional: true
  belongs_to :ingr_replica2, class_name: "Ingredient", optional: true
  belongs_to :ingr_replica3, class_name: "Ingredient", optional: true
  belongs_to :ingr_replica4, class_name: "Ingredient", optional: true
  belongs_to :ingr_replica5, class_name: "Ingredient", optional: true

  scope :for_one_post, ->(post) { where('post_id = ?', post.id) }
end

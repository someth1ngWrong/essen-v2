class CreateFoodCategoryPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :food_category_posts do |t|
      t.integer :post_id
      t.integer :food_category_id
      t.timestamps
    end
  end
end

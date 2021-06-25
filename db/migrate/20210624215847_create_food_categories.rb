class CreateFoodCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :food_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end

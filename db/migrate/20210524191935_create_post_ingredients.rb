class CreatePostIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :post_ingredients do |t|
      t.references :post, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.integer :amount
      t.integer :measure
      t.references :ingr_replica1, foreign_key: { to_table: :ingredients}
      t.references :ingr_replica2, foreign_key: { to_table: :ingredients}
      t.references :ingr_replica3, foreign_key: { to_table: :ingredients}
      t.references :ingr_replica4, foreign_key: { to_table: :ingredients}
      t.references :ingr_replica5, foreign_key: { to_table: :ingredients}

      t.timestamps
    end
  end
end

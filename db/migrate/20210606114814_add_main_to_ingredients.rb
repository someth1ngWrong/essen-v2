class AddMainToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_reference :ingredients, :main, foreign_key: { to_table: :ingredients }
  end
end

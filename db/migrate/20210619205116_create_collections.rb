class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.string :name
      t.string :title
      t.string  :image
      t.timestamps
    end
  end
end

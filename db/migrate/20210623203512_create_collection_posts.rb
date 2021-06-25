class CreateCollectionPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :collection_posts do |t|
      t.integer :collection_id
      t.integer :post_id
      t.timestamps
    end
  end
end

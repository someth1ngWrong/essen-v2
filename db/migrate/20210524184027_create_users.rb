class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # t.string :email, null: false, default: ""
      t.integer :role, default: 0

      # t.timestamps null: false
    end
  end
end

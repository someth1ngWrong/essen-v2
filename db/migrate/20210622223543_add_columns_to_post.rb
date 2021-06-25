class AddColumnsToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :number_of_servings, :integer
    add_column :posts, :complexity, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

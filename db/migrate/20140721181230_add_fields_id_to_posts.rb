class AddFieldsIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_id, :integer
    add_column :posts, :poster_id, :integer
  end
end

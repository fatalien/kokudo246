class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :post_id, :integer
    add_column :profiles, :poster_id, :integer
  end
end

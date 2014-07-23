class AddUserIdToAutoarts < ActiveRecord::Migration
  def change
    add_column :autoarts, :User_id, :integer
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :phone

      t.timestamps
    end
  end
end

class CreateAutoarts < ActiveRecord::Migration
  def change
    create_table :autoarts do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :details
      t.text :link

      t.timestamps
    end
  end
end

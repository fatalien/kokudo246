class AddMakerRefToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :maker, index: true
  end
end

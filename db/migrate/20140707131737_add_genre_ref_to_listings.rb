class AddGenreRefToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :genre, index: true
  end
end

class Listing < ActiveRecord::Base
	if Rails.env.development?
	 has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	else
 	 has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
	 				   :storage => :dropbox,
					   :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
					   :path => ":style/:id_:filename"
	end
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)

  belongs_to :user
  has_many :orders
  
  belongs_to :category
  belongs_to :genre
  belongs_to :maker
end

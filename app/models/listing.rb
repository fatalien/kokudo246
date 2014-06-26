class Listing < ActiveRecord::Base

 	 has_attached_file :image, :styles => { :medium => "400x", :thumb => "200x" }, :default_url => "/images/:style/missing.png",
	 				   :storage => :dropbox,
					   :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
					   :path => ":style/:id_:filename"
	end
	 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end

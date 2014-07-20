class Event < ActiveRecord::Base
	if Rails.env.development?
	 has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	else
		 has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
	 				   :storage => :dropbox,
					   :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
					   :path => ":style/:id_:filename"
	end

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
	validates :title, :details, :link, presence: true

	belongs_to :user
end


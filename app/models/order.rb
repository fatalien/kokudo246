class Order < ActiveRecord::Base
	validates :name, :address, :city, :phone, presence: true

	belongs_to :listing
	belongs_to :buyer, class_name: "user"
	belongs_to :seller, class_name: "user"
end

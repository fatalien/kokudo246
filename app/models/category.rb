class Category < ActiveRecord::Base
	has_many :listings

	validates :name, presence: true
end

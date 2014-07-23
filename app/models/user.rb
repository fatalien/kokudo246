class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	

   validates :username, presence: true,
			 uniqueness: true,
		 		format:{
			 	with: /[a-zA-Z0-9_-]/,
			 	message: 'Must be formatted correctly.'
				}


   has_many :listings, dependent: :destroy
   has_many :sales, class_name: "Order", foreign_key: "seller_id"
   has_many :purchases, class_name: "Order", foreign_key: "buyer_id"

   has_many :autoarts, dependent: :destroy

   
end

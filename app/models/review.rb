class Review < ActiveRecord::Base
	#attr_accessible :description, :stars, :restaurant_id
	belongs_to :restaurant
end

class Restaurant < ActiveRecord::Base
	#attr_accessible :name, :phone
	has_many :reviews

	def average_stars
		avg = self.reviews.average(:stars)
		# rounds ratings to nearest integer; returns that many asterisks. Don't need to round!
		"*" * avg.round(1)

	end
end

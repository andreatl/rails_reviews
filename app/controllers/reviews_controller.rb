class ReviewsController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = @restaurant.reviews.new
		@review.update_attributes(params[:review].permit(:description, :stars))
		if @review.save
			redirect_to restaurant_url(@restaurant)
		else
			redirect_to restaurant_url(@restaurant)
		end
	end
end

class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		#logger.info "***params: " + params[:restaurant].to_s
		@restaurant = Restaurant.new
		@restaurant.update_attributes(params[:restaurant].permit(:name,:phone))
		if @restaurant.save
			redirect_to restaurants_url
		else
			render action: "new"
		end
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(params[:restaurant].permit(:name,:phone))
			redirect_to restaurants_path
		else
			render action: "edit"
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to restaurants_url
	end
end

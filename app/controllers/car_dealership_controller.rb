class CarDealershipController < ApplicationController
	def show
		car_id = params[:id]
		@car = CarInventory.find_by(id: car_id)
	end

	def index
		@cars = CarInventory.all
		@cars.each do |car|
			puts car.make
			puts car.model
			puts car.year
		end
	end


	def new
	end

	def create
		input_make = params[:car_make]
		input_model = params[:car_model]
		input_color = params[:car_color]
		input_image = params[:car_image]
		input_price = params[:car_price]
		input_year = params[:car_year]
		input_milage = params[:car_milage]
		input_amenities = params[:car_amenities]
		input_financing = params[:car_financing]
		input_previous_owners = params[:car_previous_owners]
		@car_add = CarInventory.create(make: input_make, model: input_model, color: input_color, image: input_image, price: input_price, year: input_year, milage: input_milage, amenities: input_amenities, financing: input_financing, previous_owners: input_previous_owners)
	end

	def edit
		car_id = params[:id]
		@car = CarInventory.find_by(id: car_id)
	end

	def update
		@car = CarInventory.find_by(id: params[:id])
		@car.make = params[:car_make]
		@car.model = params[:car_model]
		@car.color = params[:car_color]
		@car.image = params[:car_image]
		@car.price = params[:car_price]
		@car.year = params[:car_year]
		@car.milage = params[:car_milage]
		@car.amenities = params[:car_amenities]
		@car.financing = params[:car_financing]
		@car.previous_owners = params[:car_previous_owners]
		@car.save

		redirect_to "/cars/#{@car.id}"
	end


	def destroy
		@car = CarInventory.find_by(id: params[:id])
		@car.destroy
		redirect_to '/cars'
	end
end

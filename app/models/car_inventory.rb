class CarInventory < ApplicationRecord

	def amenities_split
		amenities.split(", ")
	end

	def car_full_name
		year.to_s + " " + make + " " + model
	end

	def friendly_time
		created_at.strftime("%B %e, %Y")
	end
end

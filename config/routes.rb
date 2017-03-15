Rails.application.routes.draw do
	get "/cars" => "car_dealership#index"
	get "/cars/new" => "car_dealership#new"
	post "/cars" => "car_dealership#create"
	get "/cars/:id" => "car_dealership#show"
	delete "/cars/:id" => "car_dealership#destroy"
	get "/cars/:id/edit" => "car_dealership#edit"
	patch "/cars/:id" => "car_dealership#update"

end

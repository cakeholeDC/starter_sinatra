class OrdersController < Sinatra::Base
	set :views, 'app/views/orders'
	set :method_override, true

	get '/orders' do 
		@orders = FoodCustomer.all
		erb :index
	end

	get '/orders/new' do
		@customers = Customer.all
		@foods = Food.all
		erb :new
	end

	post '/orders' do 
		order = FoodCustomer.create(customer_id: params[:customer_id], food_id: params[:food_id])
		redirect "/orders/#{order.id}"
	end

	get '/orders/:id' do 
		@order = FoodCustomer.find(params[:id])
		erb :show
	end

	get '/orders/:id/edit' do 
		@order = FoodCustomer.find(params[:id])
		@customers = Customer.all
		@foods = Food.all
		erb :edit
	end

	put '/orders/:id' do
		order = FoodCustomer.find(params[:id])
		order.update(customer_id: params[:customer_id], food_id: params[:food_id])
		redirect "/orders/#{order.id}"
	end

	delete '/orders/:id' do 
		FoodCustomer.destroy(params[:id])
		redirect '/orders'
	end

end
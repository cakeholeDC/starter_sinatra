class CustomersController < Sinatra::Base

	set :views, 'app/views/customers'
	set :method_override, true

	get '/customers' do
		@customers = Customer.all
		erb :index
	end

	get '/customers/new' do 
		erb :new
	end

	post '/customers' do 
		customer = Customer.create(name: params[:name], gender: params[:gender])
		redirect "/customers/#{customer.id}"
	end

	get '/customers/:id' do 
		@customer = Customer.find(params[:id])
		erb :show
	end
	
	get '/customers/:id/edit' do 
		@customer = Customer.find(params[:id])
		erb :edit
	end

	put '/customers/:id' do 
		customer = Customer.find(params[:id])
		customer.update(name: params[:name], gender: params[:gender])
		redirect "/customers/#{customer.id}"
	end

	delete '/customers/:id' do 
		customer = Customer.find(params[:id])
		customer.food_customers.destroy_all
		customer.destroy
		redirect '/customers'
	end

end

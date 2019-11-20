class FoodsController < Sinatra::Base

	set :views, 'app/views/foods'
	set :method_override, true

	get '/foods' do 
		@foods = Food.all
		erb :index
	end

	get '/foods/new' do 
		erb :new
	end

	post '/foods' do 
		food = Food.create(name: params[:name],kind: params[:kind],price: params[:price])
		redirect "/foods/#{food.id}"
	end

	get '/foods/:id' do 
		@food = Food.find(params[:id])
		erb :show
	end

	get '/foods/:id/edit' do 
		@food = Food.find(params[:id])
		erb :edit
	end

	put '/foods/:id' do
		food = Food.find(params[:id])
		food.update(name: params[:name],kind: params[:kind],price: params[:price])
		# food.save
		redirect "/foods/#{food.id}"
	end

	delete '/foods/:id' do 
		food = Food.find(params[:id])
		food.food_customers.destroy_all
		food.destroy
		redirect "/foods"
	end

end

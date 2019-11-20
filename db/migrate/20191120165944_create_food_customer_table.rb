class CreateFoodCustomerTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :food_customers do |t|
  		t.integer :food_id
  		t.integer :customer_id
  	end
  end
end

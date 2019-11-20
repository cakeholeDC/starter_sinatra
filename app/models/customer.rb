class Customer < ActiveRecord::Base
	has_many :food_customers
	has_many :foods, through: :food_customers
end
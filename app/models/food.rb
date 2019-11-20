class Food < ActiveRecord::Base
	has_many :food_customers
	has_many :customers, through: :food_customers
end
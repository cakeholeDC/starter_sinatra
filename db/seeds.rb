Food.destroy_all
Customer.destroy_all
FoodCustomer.destroy_all

burger = Food.create(name: "burger", kind: "dinner", price: 7.99)
chicken = Food.create(name: "chicken", kind: "lunch", price: 9.99)

joe = Customer.create(name: "Joe", gender: "male")
mary = Customer.create(name: "Mary", gender: "female")

meal1 = FoodCustomer.create(food: burger, customer: joe)
meal2 = FoodCustomer.create(food: chicken, customer: mary)
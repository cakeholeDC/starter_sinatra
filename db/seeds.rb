Food.destroy_all
Customer.destroy_all
FoodCustomer.destroy_all

burger = Food.create(name: "Burger", kind: "dinner", price: 7.99)
pizza = Food.create(name: "Pizza", kind: "Lunch Special", price: 8.50)
taco = Food.create(name: "Taco", kind: "3 Tacos: Choice of shrimp, beef, or chicken", price: 6.99)
salad = Food.create(name: "Caesar Salad", kind: "Lunch Special, includes Drink", price: 9.99)
hotdog = Food.create(name: "All Beef Hotdog", kind: "Dinner", price: 5.99)
chicken = Food.create(name: "Chicken Sandwich", kind: "lunch", price: 9.99)

kyle = Customer.create(name: "Kyle", gender: "male")
young = Customer.create(name: "Young", gender: "male")
trevor = Customer.create(name: "Trevor", gender: "male")
marija = Customer.create(name: "Marija", gender: "female")
chine = Customer.create(name: "Chine", gender: "female")
emily = Customer.create(name: "Emily", gender: "female")

meal1 = FoodCustomer.create(food: taco, customer: kyle)
meal2 = FoodCustomer.create(food: pizza, customer: kyle)
meal3 = FoodCustomer.create(food: salad, customer: chine)
meal4 = FoodCustomer.create(food: chicken, customer: emily)
meal5 = FoodCustomer.create(food: hotdog, customer: marija)
meal6 = FoodCustomer.create(food: burger, customer: young)
class CreateFoodTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :foods do |t|
  		t.string :name
  		t.string :kind
  		t.float :price
  	end
  end
end

class AddCartsAndProducts < ActiveRecord::Migration[6.0]
  def change
      create_table :carts_products do |t|

        t.references :cart, :product
        t.integer :quantity
        
      end
  end  
end

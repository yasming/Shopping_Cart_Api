class RenameCartsProductsToCartProducts < ActiveRecord::Migration[6.0]
  
  def change

    rename_table :carts_products, :cart_products

  end
end

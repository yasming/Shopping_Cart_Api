# frozen_string_literal: true

class Cart < ApplicationRecord

    has_many :cart_products
    belongs_to :user

    def add_product(product, quantity)

        cart_products = self.cart_products.find_or_create_by(product_id: product.id)
        cart_products.quantity = quantity
        cart_products.save
        return cart_products

    end

end

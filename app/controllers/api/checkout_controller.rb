module Api

    class CheckoutController < ApplicationController 

        protect_from_forgery with: :null_session
        before_action :authorize_request

        def checkout
            cart = @current_user.cart
            if(!cart)
                return render json: self.api_response("Cart not found", []),status: :not_found
            end
            cart_products = cart.cart_products
         
            cart_price = 0
            quantity_of_products = 0

            for cart_product in cart_products 
                cart_price += self.product_price_calculate(cart_product)
                quantity_of_products += cart_product.quantity
            end

            if(cart_price < 400 )

                if(quantity_of_products <= 10)
                    shipping_fee = 30
                
                else

                    shipping_fee = 30
                    shipping_fee += 7 * ((quantity_of_products - 10) / 5)

                end

            end
            total = cart_price + shipping_fee

            if(cart.coupon_id)
                
                if(cart.coupon_id == 1)
                    coupon = cart_price * 0.3
                    cart_price_with_coupon = cart_price * 0.7
                    total = cart_price_with_coupon + shipping_fee

                end

                if(cart.coupon_id == 2)
                    coupon = 100
                    cart_price_with_coupon = cart_price - 100
                    total = cart_price_with_coupon + shipping_fee
                end

                if(cart.coupon_id == 3)
                    coupon = "Free shipping if minimum value is $300.50"
                    if(cart_price > 300.50 )
                        shipping_fee = 0
                    end
                end

            end

            if(total < 0)
                total = 0
            end
            Cart.destroy(cart.id)

            return render json: self.checkout_response(cart_price, coupon, shipping_fee, total),status: :ok

        end

        def product_price_calculate(cart_product)
            product = Product.find(cart_product.product_id)
            price = cart_product.quantity * product.price
            return price
        end
    
    end
end
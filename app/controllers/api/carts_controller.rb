module Api
    class CartsController < ApplicationController 
        
        protect_from_forgery with: :null_session
        before_action :authorize_request

        def create

            quantity = params[:quantity]
            product_id = params[:product_id]
        
            product = Product.find(product_id)
            cart = @current_user.cart
            
            if(!cart)
                cart = Cart.create(user_id: @current_user.id)
            end

            product_added = cart.add_product(product, quantity)

            return render json: self.api_response("Product added to cart", product_added),status: :ok
        end

        def apply_coupon
            cart = @current_user.cart
            coupon_code = params[:coupon]
            coupon = Coupon.find_by(code: coupon_code.try(:downcase))

            # raise Coupon::NotFound, 'This coupon does not exist' if coupon_code && !coupon
            if coupon_code && !coupon

                return render json: self.api_response("Coupon not found", []),status: :not_found

            else
                cart.coupon_id = coupon.id
                cart.save
                return render json: self.api_response("Coupon has been applied", cart),status: :ok

            end
        end

    end
	
end
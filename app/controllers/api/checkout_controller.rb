module Api

    class CheckoutController < ApplicationController 

        protect_from_forgery with: :null_session
        before_action :authorize_request

        def checkout
            cart = @current_user.cart
            
            return render json: self.api_response(cart.cart_products, "teste"),status: :ok

        end
    
    end
end
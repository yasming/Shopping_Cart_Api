module Api

	class CartsController < ApplicationController 
        protect_from_forgery with: :null_session

        def create
            return render json: self.api_response("foi", "foi", "foi"),status: :ok
         
        end

    end
	
end
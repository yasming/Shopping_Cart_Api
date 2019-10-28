# frozen_string_literal: true

class ApplicationController < ActionController::Base
  
    def api_response(message, data)
		{message: message, data: data}
	end

	def checkout_response(subtotal, coupon, shipping_fee, total)
		{subtotal: subtotal, coupon: coupon, shipping_fee: shipping_fee, total: total}
	end
	
	def authorize_request
		
		header = request.headers['Authorization']
		header = header.split(' ').last if header
		begin
		  @decoded = JsonWebToken.decode(header)
		  @current_user = User.find(@decoded[:user_id])
		rescue ActiveRecord::RecordNotFound => e
		  render json: { errors: e.message }, status: :unauthorized
		rescue JWT::DecodeError => e
		  render json: { errors: e.message }, status: :unauthorized
		end

	end
	
end

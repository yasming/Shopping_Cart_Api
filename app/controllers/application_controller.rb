# frozen_string_literal: true

class ApplicationController < ActionController::Base
  
    def api_response(status, message, data)
		{status: status, message: message, data: data}
	end
end

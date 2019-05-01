class ScannersController < ApplicationController

  protect_from_forgery with: :null_session

  def create

    Scanner.parse_data(params, request.remote_ip)
    
    render json: {
      "message": "posted data",
      "success": true
    }
  end
end

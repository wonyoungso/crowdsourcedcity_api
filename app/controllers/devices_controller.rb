class DevicesController < ApplicationController

  protect_from_forgery with: :null_session
  def create
    puts params
    render json: {
      "message": "posted data",
      "success": true,
      "params": params
    }
  end
end

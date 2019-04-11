class DevicesController < ApplicationController
  def create
    puts params
    render json: {
      "message": "posted data",
      "success": true
      "params": params
    }
  end
end

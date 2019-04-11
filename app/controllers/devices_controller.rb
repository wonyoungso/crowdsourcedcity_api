class DevicesController < ApplicationController
  def create
    render json: {
      "message": "posted data",
      "success": true
      "params": params
    }
  end
end

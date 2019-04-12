class ScannersController < ApplicationController

  protect_from_forgery with: :null_session

  def create

    Scanners.parse_data(params)

    render json: {
      "message": "posted data",
      "success": true
    }
  end
end

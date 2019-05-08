class ScannersController < ApplicationController

  protect_from_forgery with: :null_session

  def create
    ScannerParseJob.perform_later(params.permit!.to_h, request.remote_ip)
    
    render json: {
      "message": "posted data",
      "success": true
    }
  end
end

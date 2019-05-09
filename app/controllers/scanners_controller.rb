class ScannersController < ApplicationController

  protect_from_forgery with: :null_session

  def create
    device_data = params.permit!.to_h

    @scanner = Scanner.find_or_create_by(device_id: device_data[:d])
    @scanner.update_column(:updated_at, DateTime.now)

    ScannerParseJob.perform_later(device_data, request.remote_ip)
    
    render json: {
      "message": "posted data",
      "success": true
    }
  end
end

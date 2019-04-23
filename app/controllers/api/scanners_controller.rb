class ScannersController < ApplicatonController
  def index
    
    @scanners = Scanner.order('device_id ASC')

    render json: { success: true, scanners: @scanners.map {|s| s.conv_to_json }}
  end
end

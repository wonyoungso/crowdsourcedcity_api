class Admin::DevicesScannersController < Admin::AdminController
  def index

    if params[:timestamp].present?
      @timestamp = DateTime.parse(params[:timestamp]).to_i * 1000
    elsif DevicesScanner.first.present?
      @timestamp = DevicesScanner.first.timestamp_integer
    else
      @timestamp = DateTime.parse("2019-04-16 14:31:33").to_i * 1000
    end

    @result = DevicesScanner.find_all_devices_around_time(@timestamp)
  end
end

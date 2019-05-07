class Api::DevicesScannersController < ApplicationController
  def index

    if params[:timestamp].present?
      @timestamp = DateTime.parse(params[:timestamp]).change(:offset => "-0400").to_i * 1000
    elsif DevicesScanner.first.present?
      @timestamp = DevicesScanner.first.timestamp_integer
    else
      @timestamp = DateTime.parse("2019-04-16 14:31:33").to_i * 1000
    end
    timestamp_start = @timestamp - 20000
    timestamp_end = @timestamp + 20000

    @result = DevicesScanner.find_all_devices_around_time(DevicesScanner.joins(:device).where('devices.device_type' => "wifi").or(DevicesScanner.joins(:device).where('devices.is_furniture' => true)).where(:timestamp_integer => timestamp_start...timestamp_end), @timestamp)

    render json: {success: true, result: @result}
  end

  def wifi 


    if params[:timestamp].present?
      @timestamp = DateTime.parse(params[:timestamp]).change(:offset => "-0400").to_i * 1000
    elsif DevicesScanner.first.present?
      @timestamp = DevicesScanner.first.timestamp_integer
    else
      @timestamp = DateTime.parse("2019-04-16 14:31:33").to_i * 1000
    end

    timestamp_start = @timestamp - 20000
    timestamp_end = @timestamp + 20000
    @result = DevicesScanner.find_all_devices_around_time(DevicesScanner.joins(:device, :scanner).where('devices.device_type' => "wifi", 'devices.is_furniture' => false, :timestamp_integer => timestamp_start...timestamp_end), @timestamp)

    render json: {success: true, result: @result}
  end

  def furniture
    if params[:timestamp].present?
      @timestamp = DateTime.parse(params[:timestamp]).change(:offset => "-0400").to_i * 1000
    elsif DevicesScanner.first.present?
      @timestamp = DevicesScanner.first.timestamp_integer
    else
      @timestamp = DateTime.parse("2019-04-16 14:31:33").to_i * 1000
    end

    timestamp_start = @timestamp - 20000
    timestamp_end = @timestamp + 20000
    @result = DevicesScanner.find_all_devices_around_time(DevicesScanner.joins(:device, :scanner).where('devices.device_type' => "bluetooth", 'devices.is_furniture' => true, :timestamp_integer => timestamp_start...timestamp_end), @timestamp)

    render json: {success: true, result: @result}
  end
end

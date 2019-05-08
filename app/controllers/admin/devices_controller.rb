class Admin::DevicesController < Admin::AdminController
  def index
    @page = params[:page] || 1
    @devices = Device.order('created_at DESC').paginate(per_page: 30, page: @page)
  end

   def wifi
    @page = params[:page] || 1
    @devices = Device.where(device_type: "wifi").order('created_at DESC').paginate(per_page: 30, page: @page)
    
    render :template => 'admin/devices/index'
  end

  def bluetooth
    @page = params[:page] || 1
    @devices = Device.where(device_type: "bluetooth").order('created_at DESC').paginate(per_page: 30, page: @page)
    
    render :template => 'admin/devices/index'
  end

  def furniture
    @page = params[:page] || 1
    @devices = Device.where(device_type: "bluetooth", is_furniture: true).order('created_at DESC').paginate(per_page: 30, page: @page)
    
    render :template => 'admin/devices/index'
  end

  def search
    @page = params[:page] || 1
    @devices = Device.where("mac_address LIKE ?", "%#{params[:query]}%").paginate(per_page: 30, page: @page)
    
    render :template => 'admin/devices/index'
  end

  def edit
    
    @device = Device.find params[:id]
    
  end
  
  def show
    @page = params[:page] || 1

    @device = Device.find params[:id]
    @devices_scanners = @device.devices_scanners.order("timestamp DESC, id DESC").paginate(per_page: 30, page: @page)
  end


  def update
    @device = Device.find params[:id]

    
    if @device.update_attributes(params.require(:device).permit!)
      flash[:notice] = 'Successfully updated.'
      redirect_to request.referer
    else

      flash[:alert] = "#{@device.errors.messages.values.join(' ')}"
      redirect_to request.referer
    end
  end

  def destroy
    @device = Device.find params[:id]

    @device.destroy

    flash[:notice] = 'Successfully updated.'
    redirect_to request.referer
  end



end

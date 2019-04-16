class Admin::DevicesController < Admin::AdminController
  def index
    @page = params[:page] || 1
    @devices = Device.order('created_at DESC').paginate(per_page: 30, page: @page)
  end

  def edit
    @device = Device.find params[:id]
  end
  
  def show
    @device = Device.find params[:id]
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

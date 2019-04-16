class Admin::ScannersController < Admin::AdminController
  def index
    @page = params[:page] || 1
    @scanners = Scanner.order('device_id ASC').paginate(per_page: 30, page: @page)
  end

  def edit
    @scanner = Scanner.find params[:id]
  end

  def update
    @scanner = Scanner.find params[:id]

    
    if @scanner.update_attributes(params.require(:scanner).permit!)
      flash[:notice] = 'Successfully updated.'
      redirect_to request.referer
    else

      flash[:alert] = "#{@scanner.errors.messages.values.join(' ')}"
      redirect_to request.referer
    end
  end


  def destroy
    @scanner = Scanner.find params[:id]

    @scanner.destroy

    flash[:notice] = 'Successfully updated.'
    redirect_to request.referer
  end


end

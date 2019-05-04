class WelcomeController < ApplicationController
  def index
  end
  
  def check

    @scanners = Scanner.order('device_id ASC')
    render :layout => 'admin'
  end

end

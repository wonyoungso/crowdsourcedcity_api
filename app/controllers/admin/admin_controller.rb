class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :login_required
  before_action :authenticated_admin

  def authenticated_admin
    unless self.current_user.present? and self.current_user.admin
      redirect_to admin_login_path, :alert => "you don't have permissions to access this page."
    end
  end
end
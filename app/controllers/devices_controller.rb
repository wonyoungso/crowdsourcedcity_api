class DevicesController < ApplicationController
  def create
    render json: params
  end
end

class TestController < ApplicationController

  def new
  end

  def create
    flash.now[:danger] = params[:session]
    redirect_to current_user
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
class TestController < ApplicationController

  def new
  end

  def create
    windshield =  params[:session][:check_windshield]
    tire =  params[:session][:check_tire]
    light =  params[:session][:check_light]
    gas =  params[:session][:check_gas]
    if windshield =="1" and tire =="1" and light=="1" and gas=="1"
        redirect_to current_user
    else
        flash[:error] = 'Unsuccessful in checking in becuase not all the checkboxes were checked! Please Sign in and make sure that all the checkboxes have been checked!'
        log_out if logged_in?
        redirect_to root_url
    end 
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
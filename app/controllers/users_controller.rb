
require 'json'
require 'net/http'



class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @vehicle_stats =  VehicleStatus.first()
    
    source = 'http://47.218.218.78:8080/car_info.json'
    result = JSON.parse(Net::HTTP.get_response(URI.parse(source)).body)
    
    @vehicle_stats = {"tire_pressure"=> result['tire pressure'], "battery_level"=>result['battery'], "lidar_status"=> result['lidar status'], "time"=> result['time']}
    
    
    
    return @user,@vehicle_stats
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to checklist_path
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end



  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password,
                                   :password_confirmation)
    end
    
   
end
class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #@vehicle_stats =  VehicleStatus.first()
    @vehicle_stats = VehicleStatus.first()
    require 'json'
    file = File.read('car_info.json')
    data_hash = JSON.parse(file)
    time = data_hash['Time']
    timearray = time.split('_')
    past = Time.new(timearray[0],timearray[1],timearray[2],timearray[3],timearray[4],0,"-05:00")
    timenow = Time.now
    diff = timenow - past
    @vehicle_stats = {"tire_pressure"=> data_hash['tire pressure'], 
    "battery_level"=>data_hash['battery'], "lidar_status"=> 'Online', "time"=> diff/60}
    return @user,@vehicle_stats
    #file = File.read('file-name-to-be-read.json')
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

  def show_stats
    @vehicle_stats =  VehicleStatus.first()
  end  


  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password,
                                   :password_confirmation)
    end
    
   
end
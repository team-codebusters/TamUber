
require 'json'
require 'net/http'



class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    
    url = URI.parse('http://47.218.218.78:8080/car_info.json')

    begin 
    	http = Net::HTTP.new(url.host, url.port)
    	http.read_timeout = 3
    	http.open_timeout = 3
    	resp = http.get(url.path) 
    	result = JSON.parse(resp.body)
    	now = Time.now()
    	
      past_array = result['time'].split('_')
      past = Time.new(past_array[0], past_array[1], past_array[2], past_array[3], past_array[4], past_array[5])
      diff = (now - past).abs 

      @diff_time = "Hour:%d Minute:%d Second:%d" % [diff/3600-5, diff / 60 % 60, diff % 60]
      @vehicle_stats = {"tire_pressure"=> result['tire pressure'], "battery_level"=>result['battery'], "lidar_status"=> result['lidar status'], "time"=> result['time']}
    
      rescue 
      	@diff_time = "Server is Down!"
        @vehicle_stats = {"tire_pressure"=> "Server is Down!", "battery_level"=>"Server is Down!", "lidar_status"=> "Server is Down!", "time"=>"Server is Down!"}
    end 
    return @user,@vehicle_stats,@diff_time
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
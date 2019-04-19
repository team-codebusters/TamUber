class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @vehicle_stats =  VehicleStatus.first()
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

  def show_stats
    @vehicle_stats =  VehicleStatus.first()
  end  


  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password,
                                   :password_confirmation)
    end
    
   
end
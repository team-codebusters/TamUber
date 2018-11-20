class DashboardController < ApplicationController

  def show_stats
    @vehicle_stats =  VehicleStatus.first()
  end
end
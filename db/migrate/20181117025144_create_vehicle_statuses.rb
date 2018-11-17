class CreateVehicleStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_statuses do |t|
      t.string :tire_pressure
      t.string :battery_level
      t.string :lidar_status

      t.timestamps
    end
  end
end

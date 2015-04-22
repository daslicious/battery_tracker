class RemoveDeviceIdFromBatteries < ActiveRecord::Migration
  def change
    remove_column :batteries, :device_id
  end
end

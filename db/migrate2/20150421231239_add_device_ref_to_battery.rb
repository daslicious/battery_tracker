class AddDeviceRefToBattery < ActiveRecord::Migration
  def change
    add_reference :batteries, :device, index: true, foreign_key: true
  end
end

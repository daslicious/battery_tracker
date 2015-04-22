class AddSlotsToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :slots, :string
  end
end

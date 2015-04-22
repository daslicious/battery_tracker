class AddSizeToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :size, :string
  end
end

class AddRemoteToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :remote, :string
  end
end

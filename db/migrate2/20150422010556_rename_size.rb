class RenameSize < ActiveRecord::Migration
  def change
    rename_column :devices, :size, :battery_size
  end
end

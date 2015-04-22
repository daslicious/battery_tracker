class RemoveSizeIdFromBatteries < ActiveRecord::Migration
  def change
    remove_column :batteries, :size_id
  end
end

class RemoveSizeFromBatteries < ActiveRecord::Migration
  def change
    remove_column :batteries, :size, :string
  end
end

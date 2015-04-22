class AddSizeToBatteries < ActiveRecord::Migration
  def change
    add_column :batteries, :size, :string
  end
end

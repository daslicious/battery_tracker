class AddSizeRefToBatteries < ActiveRecord::Migration
  def change
    add_reference :batteries, :size, index: true, foreign_key: true
  end
end

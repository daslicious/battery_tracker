class AddLookupToBatteries < ActiveRecord::Migration
  def change
    add_column :batteries, :lookup, :integer
    add_index :batteries, :lookup
  end
end
